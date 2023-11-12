//
//  Created with ♥ by Serhii Pryimachuk on 10.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var symbol = Symbol()
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    HStack {
                        Spacer()
                        ZStack {
                            symbol.makeFrame()
                                .resizable()
                                .scaledToFit()
                            
                            symbol.makeAmplifier()
                        }
                            .frame(width: 200)
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
                    
                    Picker("Standard Identity", selection: $symbol.standartIdentity) {
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
                    
                    Picker("HQ / Task Force / Dummy", selection: $symbol.hqtfDummy) {
                        ForEach(HQTFDummy.allCases) { hqtfDummy in
                            Text(hqtfDummy.id + " " + hqtfDummy.name).tag(hqtfDummy)
                        }
                    }
                    
                    Picker("Amplifier", selection: $symbol.amplifier) {
                        ForEach(Amplifier.allCases) { amplifier in
                            Text(amplifier.id + " " + amplifier.name).tag(amplifier)
                        }
                    }
                    
                    Picker("Descriptor", selection: $symbol.descriptor) {
                        ForEach(symbol.amplifier.possibleDescriptors) { descriptor in
                            Text(descriptor.id + " " + descriptor.name).tag(AnyDescriptor(descriptor))
                        }
                    }
                    
                    Toggle("Civilian", isOn: $symbol.isCivilian)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
