//
//  Created with ♥ by Serhii Pryimachuk on 10.11.2023.
//

import SwiftUI

public struct MilitarySymbolPicker: View {
    @Binding public var symbol: MilitarySymbol
    @State private var searchText = ""
    @State private var isSearchPresented = false
    @State private var searchResults: [MilitarySymbol]?

    public init(symbol: Binding<MilitarySymbol>) {
        self._symbol = symbol
    }

    public var body: some View {
        Form {
            // Temporary solution - works okay on iPhone but horrible on Mac.
            MilitarySymbolSearchResults(searchText: $searchText,
                                        selectedSymbol: $symbol,
                                        isSearchPresented: $isSearchPresented,
                                        searchResults: $searchResults)

            Section {
                HStack {
                    Spacer()
                    symbol.makeView(size: 200)
                    Spacer()
                }
                LabeledContent("SIDC:", value: symbol.sidc)
                    .contextMenu {
                        Button("Copy", systemImage: "doc.on.doc") {
                            copyToPasteboard(symbol.sidc)
                        }
                    }
            }

            Section {
                Picker(selection: $symbol.context) {
                    ForEach(Context.allCases) { context in
                        Text(context.id + " " + context.name).tag(context)
                    }
                } label: {
                    Text("Context", bundle: .module)
                }

                Picker(selection: $symbol.standardIdentity) {
                    ForEach(StandardIdentity.allCases) { identity in
                        Text(identity.id + " " + identity.name).tag(identity)
                    }
                } label: {
                    Text("Standard Identity", bundle: .module)
                }

                Picker(selection: $symbol.dimention) {
                    ForEach(Dimension.allCases) { dimension in
                        Text(dimension.id + " " + dimension.name).tag(dimension)
                    }
                } label: {
                    Text("Dimention", bundle: .module)
                }

                Picker(selection: $symbol.status) {
                    ForEach(Status.allCases) { status in
                        Text(status.id + " " + status.name).tag(status)
                    }
                } label: {
                    Text("Status", bundle: .module)
                }

                Picker(selection: $symbol.hqtfd) {
                    ForEach(HQTFD.allCases) { hqtfd in
                        Text(hqtfd.id + " " + hqtfd.name).tag(hqtfd)
                    }
                } label: {
                    Text("HQ / Task Force / Dummy", bundle: .module)
                }

                Picker(selection: $symbol.amplifier) {
                    ForEach(Amplifier.allCases) { amplifier in
                        Text(amplifier.id + " " + amplifier.name).tag(amplifier)
                    }
                } label: {
                    Text("Amplifier", bundle: .module)
                }

                Picker(selection: $symbol.descriptor) {
                    ForEach(symbol.amplifier.descriptors) { descriptor in
                        Text(descriptor.id + " " + descriptor.name).tag(AnyDescriptor(descriptor))
                    }
                } label: {
                    Text("Descriptor", bundle: .module)
                }

                Picker(selection: $symbol.entity) {
                    ForEach(symbol.dimention.entities) { entity in
                        Text(entity.id + " " + entity.name).tag(entity)
                    }
                } label: {
                    Text("Entity", bundle: .module)
                }

                Picker(selection: $symbol.entityType) {
                    ForEach(symbol.entity.types) { entityType in
                        Text(entityType.id + " " + entityType.name).tag(entityType)
                    }
                } label: {
                    Text("Entity Type", bundle: .module)
                }

                Picker(selection: $symbol.entitySubtype) {
                    ForEach(symbol.entityType.subtypes) { entitySubtype in
                        Text(entitySubtype.id + " " + entitySubtype.name).tag(entitySubtype)
                    }
                } label: {
                    Text("Entity Subtype", bundle: .module)
                }

                Toggle(isOn: $symbol.isCivilian) {
                    Text("Civilian", bundle: .module)
                }
                .disabled(symbol.standardIdentity == .suspect || symbol.standardIdentity == .hostile)
                .onChange(of: symbol.standardIdentity) { _, newValue in
                    if newValue == .suspect || newValue == .hostile {
                        symbol.isCivilian = false
                    }
                }

                Toggle(isOn: $symbol.isAlternateStatusAmplifiers) {
                    Text("Use alternate status amplifiers", bundle: .module)
                }
                //                        .disabled(symbol.standardIdentity == .suspect || symbol.standardIdentity == .hostile)
                //                        .onChange(of: symbol.standardIdentity) { _, newValue in
                //                            if symbol.standardIdentity == .suspect || symbol.standardIdentity == .hostile {
                //                                symbol.isCivilian = false
                //                            }
                //                        }
            }
        }
        .onChange(of: searchText) { _, searchText in
            searchResults = MilitarySymbol.searched(text: searchText, currentSymbol: symbol)
        }
        .animation(.linear, value: searchText)
        .searchable(text: $searchText,
                    isPresented: $isSearchPresented,
                    placement: searchFieldPlacement,
                    prompt: "Search symbol")
        .navigationTitle(symbol.entity.name + " - " + symbol.entityType.name)
    }

    private var searchFieldPlacement: SearchFieldPlacement {
#if os(macOS)
        .automatic
#else
        .navigationBarDrawer
#endif
    }

    private func copyToPasteboard(_ string: String) {
#if os(macOS)
        let pasteboard = NSPasteboard.general
        pasteboard.setString(string, forType: .string)
#else
        let pasteboard = UIPasteboard.general
        pasteboard.string = string
#endif
    }
}
