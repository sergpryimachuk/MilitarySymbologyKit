//
//  Created with ♥ by Serhii Pryimachuk on 10.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var symbol = MilitarySymbol()
    @State private var searchText = ""
    
    var body: some View {
        Form {
            
            SearchView(searchText: $searchText, selectedSymbol: $symbol)
            
            Section {
                HStack {
                    Spacer()
                    symbol.makeView(frameWidth: 200)
                    Spacer()
                }
                LabeledContent("SIDC:", value: symbol.makeSIDC())
            }
            .listRowBackground(Color.clear)
            
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
                    .onChange(of: symbol.entity) {
                        symbol.entityType = .none
                    }
                }
                
                Picker("Entity Type", selection: $symbol.entityType) {
                    ForEach(symbol.entity.types) { entityType in
                        Text(entityType.id + " " + entityType.name).tag(entityType)
                    }
                }
                
                Toggle("Civilian", isOn: $symbol.isCivilian)
                    .disabled(symbol.standardIdentity == .suspect || symbol.standardIdentity == .hostile)
                    .onChange(of: symbol.standardIdentity) { _, newValue in
                        if symbol.standardIdentity == .suspect || symbol.standardIdentity == .hostile {
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
        .searchable(text: $searchText)
        .navigationTitle(symbol.entity.name + " - " + symbol.entityType.name)
    }
}

#Preview {
    ContentView()
}
