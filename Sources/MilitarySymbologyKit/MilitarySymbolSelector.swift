//
//  Created with ♥ by Serhii Pryimachuk on 04.12.2023.
//

import SwiftUI

public struct MilitarySymbolSelector: View {
    
    @Binding public var symbol: MilitarySymbol
    
    public var body: some View {
        List {
            Section {
                NavigationLink {
                    StatusSelector(symbol: $symbol)
                } label: {
                    Text("Select status", bundle: .module)
                }
            } header: {
                Text("Context", bundle: .module)
            }
        }
    }
}

#Preview {
    MilitarySymbolSelector(symbol: .constant(.init()))
}

public struct StatusSelector: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @Binding var symbol: MilitarySymbol
    
    public var body: some View {
        List(Status.allCases) { status in
            let illustrationSymbol = MilitarySymbol(
                context: symbol.context,
                standardIdentity: symbol.standardIdentity,
                dimention: symbol.dimention,
                status: status,
                hqtfd: symbol.hqtfd,
                amplifier: symbol.amplifier,
                descriptor: symbol.descriptor,
                entity: symbol.entity,
                entityType: symbol.entityType,
                entitySubtype: symbol.entitySubtype,
                isCivilian: symbol.isCivilian,
                isAlternateStatusAmplifiers: symbol.isAlternateStatusAmplifiers)
            
            Button {
                symbol.status = status
                dismiss()
            } label: {
                LabeledContent {
                    Text(status.name)
                } label: {
                    illustrationSymbol.makeView(size: 50)
                }
            }
        }
    }
}

#Preview {
    MilitarySymbolPicker(symbol: .constant(.init()))
}
