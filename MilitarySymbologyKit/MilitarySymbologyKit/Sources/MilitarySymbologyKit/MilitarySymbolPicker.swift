//
//  Created with ♥ by Serhii Pryimachuk on 10.11.2023.
//

import SwiftUI

public struct MilitarySymbolPicker: View {
    @State public var symbol: MilitarySymbol
    @State public var searchText = ""
    @State public var isSearchPresented = false
    @State public var searchResults: [MilitarySymbol]?

    init() {
        _symbol = .init(initialValue: .init())
    }

    init(symbol: MilitarySymbol) {
        _symbol = .init(initialValue: symbol)
    }

    public var body: some View {
        Form {
            MilitarySymbolSearchResults(searchText: $searchText,
                                        selectedSymbol: $symbol,
                                        isSearchPresented: $isSearchPresented,
                                        searchResults: $searchResults)

            Section {
                HStack {
                    Spacer()
                    symbol.makeView(size: 200)
                        .scaleEffect(1.5)
                    Spacer()
                }
                LabeledContent("SIDC:", value: symbol.sidc)
                    .contextMenu {
                        Button("Copy", systemImage: "doc.on.doc") {
                            let pasteboard = UIPasteboard.general
                            pasteboard.string = symbol.sidc
                        }
                    }
            }

            Section {
                Picker("Context", selection: $symbol.context) {
                    ForEach(Context.allCases) { context in
                        Text(context.id + " " + context.name).tag(context)
                    }
                }

                Picker("Standard Identity", selection: $symbol.standardIdentity) {
                    ForEach(StandardIdentity.allCases) { identity in
                        Text(identity.id + " " + identity.name).tag(identity)
                    }
                }

                Picker("Dimention", selection: $symbol.dimention) {
                    ForEach(Dimension.allCases) { dimension in
                        Text(dimension.id + " " + dimension.name).tag(dimension)
                    }
                }

                Picker("Status", selection: $symbol.status) {
                    ForEach(Status.allCases) { status in
                        Text(status.id + " " + status.name).tag(status)
                    }
                }

                Picker("HQ / Task Force / Dummy", selection: $symbol.hqtfd) {
                    ForEach(HQTFD.allCases) { hqtfd in
                        Text(hqtfd.id + " " + hqtfd.name).tag(hqtfd)
                    }
                }

                Picker("Amplifier", selection: $symbol.amplifier) {
                    ForEach(Amplifier.allCases) { amplifier in
                        Text(amplifier.id + " " + amplifier.name).tag(amplifier)
                    }
                }

                Picker("Descriptor", selection: $symbol.descriptor) {
                    ForEach(symbol.amplifier.descriptors) { descriptor in
                        Text(descriptor.id + " " + descriptor.name).tag(AnyDescriptor(descriptor))
                    }
                }

                Picker("Entity", selection: $symbol.entity) {
                    ForEach(symbol.dimention.entities) { entity in
                        Text(entity.id + " " + entity.name).tag(entity)
                    }
                }

                Picker("Entity Type", selection: $symbol.entityType) {
                    ForEach(symbol.entity.types) { entityType in
                        Text(entityType.id + " " + entityType.name).tag(entityType)
                    }
                }

                Picker("Entity Subtype", selection: $symbol.entitySubtype) {
                    ForEach(symbol.entityType.subtypes) { entitySubtype in
                        Text(entitySubtype.id + " " + entitySubtype.name).tag(entitySubtype)
                    }
                }

                Toggle("Civilian", isOn: $symbol.isCivilian)
                    .disabled(symbol.standardIdentity == .suspect || symbol.standardIdentity == .hostile)
                    .onChange(of: symbol.standardIdentity) { _, newValue in
                        if newValue == .suspect || newValue == .hostile {
                            symbol.isCivilian = false
                        }
                    }

                Toggle("Use alternate status amplifiers", isOn: $symbol.isAlternateStatusAmplifiers)
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
                    placement: .navigationBarDrawer,
                    prompt: "Search symbol")
        .navigationTitle(symbol.entity.name + " - " + symbol.entityType.name)
    }
}

#Preview {
    MilitarySymbolPicker()
}
