//
//  Created with ♥ by Serhii Pryimachuk on 04.12.2023.
//

import SwiftUI

public struct MilitarySymbolSelector: View {
    
    @Binding public var symbol: MilitarySymbol
    
    public init(symbol: Binding<MilitarySymbol>) {
        self._symbol = symbol
    }
    
    public var body: some View {
        List {
            // MARK: - Context
            Section {
                NavigationLink {
                    ContextSelector(symbol: $symbol)
                } label: {
                    Text("Select context", bundle: .module)
                }
            } header: {
                Text("Context", bundle: .module)
            }
            
            // MARK: - Standard Identity
            
            Section {
                NavigationLink {
                    StandardIdentitySelector(symbol: $symbol)
                } label: {
                    Text("Select standard identity", bundle: .module)
                }
            } header: {
                Text("Standard identity", bundle: .module)
            }
            
            // MARK: - Status
            Section {
                NavigationLink {
                    StatusSelector(symbol: $symbol)
                } label: {
                    Text("Select status", bundle: .module)
                }
            } header: {
                Text("Status", bundle: .module)
            }
        }
    }
}

public struct ContextSelector: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @Binding var symbol: MilitarySymbol
    
    public var body: some View {
        List(Context.allCases) { context in
            let illustrationSymbol = MilitarySymbol(
                context: context,
                standardIdentity: symbol.standardIdentity,
                dimention: symbol.dimention,
                status: symbol.status,
                hqtfd: symbol.hqtfd,
                amplifier: symbol.amplifier,
                descriptor: symbol.descriptor,
                entity: symbol.entity,
                entityType: symbol.entityType,
                entitySubtype: symbol.entitySubtype,
                isCivilian: symbol.isCivilian,
                isAlternateStatusAmplifiers: symbol.isAlternateStatusAmplifiers)
            
            Button {
                symbol.context = context
                dismiss()
            } label: {
                LabeledContent {
                    Text(context.name)
                } label: {
                    illustrationSymbol.makeView(size: 100)
                }
            }
        }
        .navigationTitle(Text("Context", bundle: .module))
    }
}

public struct StandardIdentitySelector: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @Binding var symbol: MilitarySymbol
    
    public var body: some View {
        List(StandardIdentity.allCases) { standardIdentity in
            let illustrationSymbol = MilitarySymbol(
                context: symbol.context,
                standardIdentity: standardIdentity,
                dimention: symbol.dimention,
                status: symbol.status,
                hqtfd: symbol.hqtfd,
                amplifier: symbol.amplifier,
                descriptor: symbol.descriptor,
                entity: symbol.entity,
                entityType: symbol.entityType,
                entitySubtype: symbol.entitySubtype,
                isCivilian: symbol.isCivilian,
                isAlternateStatusAmplifiers: symbol.isAlternateStatusAmplifiers)
            
            Button {
                symbol.standardIdentity = standardIdentity
                dismiss()
            } label: {
                LabeledContent {
                    Text(standardIdentity.name)
                } label: {
                    illustrationSymbol.makeView(size: 100)
                }
            }
        }
        .navigationTitle(Text("Standard identity", bundle: .module))
    }
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
                    illustrationSymbol.makeView(size: 100)
                }
            }
        }
        .navigationTitle(Text("Status", bundle: .module))
    }
}
