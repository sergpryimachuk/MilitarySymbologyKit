//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//  

import SwiftUI

struct TestView: View {
    
    @State private var symbol = Symbol()
    var body: some View {
        Picker("Descriptor", selection: $symbol.descriptor) {
            ForEach(symbol.amplifier.possibleDescriptors) { descriptor in
                Text(descriptor.id + " " + descriptor.name).tag(AnyDescriptor(descriptor))
            }
        }
    }
}

#Preview {
    TestView()
}
