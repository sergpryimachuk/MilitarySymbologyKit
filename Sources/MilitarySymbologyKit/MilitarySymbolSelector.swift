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
            
            // MARK: - Dimention
            
            Section {
                NavigationLink {
                    DimentionSelector(symbol: $symbol)
                } label: {
                    Text("Select dimention", bundle: .module)
                }
            } header: {
                Text("Dimention", bundle: .module)
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
            
            // MARK: - HQTFD
            Section {
                NavigationLink {
                    HQTFDSelector(symbol: $symbol)
                } label: {
                    Text("Select HQ / Task Force / Dummy", bundle: .module)
                }
            } header: {
                Text("Status", bundle: .module)
            }
            
            // MARK: - Amplifier
            Section {
                NavigationLink {
                    AmplifierSelector(symbol: $symbol)
                } label: {
                    Text("Select amplifier", bundle: .module)
                }
            } header: {
                Text("Amplifier", bundle: .module)
            }
            
            // MARK: - Descriptor
            Section {
                NavigationLink {
                    DescriptorSelector(symbol: $symbol)
                } label: {
                    Text("Select descriptor", bundle: .module)
                }
            } header: {
                Text("Descriptor", bundle: .module)
            }
            
            // MARK: - Entity
            Section {
                NavigationLink {
                    EntitySelector(symbol: $symbol)
                } label: {
                    Text("Select entity", bundle: .module)
                }
            } header: {
                Text("Entity", bundle: .module)
            }
            
            // MARK: - Entity Type
            Section {
                NavigationLink {
                    EntityTypeSelector(symbol: $symbol)
                } label: {
                    Text("Select entity type", bundle: .module)
                }
            } header: {
                Text("Entity Type", bundle: .module)
            }
            
            // MARK: - Entity Subtype
            Section {
                NavigationLink {
                    EntitySubtypeSelector(symbol: $symbol)
                } label: {
                    Text("Select entity subtype", bundle: .module)
                }
            } header: {
                Text("Entity Subtype", bundle: .module)
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
                    HStack {
                        illustrationSymbol.makeView(size: 100)
                        Text(context.name)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    if symbol.context == context {
                        Image(systemName: "checkmark.circle.fill")
                    } else {
                        Image(systemName: "circle")
                    }
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
                    HStack {
                        illustrationSymbol.makeView(size: 100)
                        Text(standardIdentity.name)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    if symbol.standardIdentity == standardIdentity {
                        Image(systemName: "checkmark.circle.fill")
                    } else {
                        Image(systemName: "circle")
                    }
                }
            }
        }
        .navigationTitle(Text("Standard identity", bundle: .module))
    }
}

public struct DimentionSelector: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @Binding var symbol: MilitarySymbol
    
    public var body: some View {
        List(Dimension.allCases) { dimention in
            let illustrationSymbol = MilitarySymbol(
                context: symbol.context,
                standardIdentity: symbol.standardIdentity,
                dimention: dimention,
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
                symbol.dimention = dimention
                dismiss()
            } label: {
                LabeledContent {
                    HStack {
                        illustrationSymbol.makeView(size: 100)
                        Text(dimention.name)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    if symbol.dimention == dimention {
                        Image(systemName: "checkmark.circle.fill")
                    } else {
                        Image(systemName: "circle")
                    }
                }
            }
        }
        .navigationTitle(Text("Dimention", bundle: .module))
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
                    HStack {
                        illustrationSymbol.makeView(size: 100)
                        Text(status.name)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    if symbol.status == status {
                        Image(systemName: "checkmark.circle.fill")
                    } else {
                        Image(systemName: "circle")
                    }
                }
            }
        }
        .navigationTitle(Text("Status", bundle: .module))
    }
}

public struct HQTFDSelector: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @Binding var symbol: MilitarySymbol
    
    public var body: some View {
        List(HQTFD.allCases) { hqtfd in
            let illustrationSymbol = MilitarySymbol(
                context: symbol.context,
                standardIdentity: symbol.standardIdentity,
                dimention: symbol.dimention,
                status: symbol.status,
                hqtfd: hqtfd,
                amplifier: symbol.amplifier,
                descriptor: symbol.descriptor,
                entity: symbol.entity,
                entityType: symbol.entityType,
                entitySubtype: symbol.entitySubtype,
                isCivilian: symbol.isCivilian,
                isAlternateStatusAmplifiers: symbol.isAlternateStatusAmplifiers)
            
            Button {
                symbol.hqtfd = hqtfd
                dismiss()
            } label: {
                LabeledContent {
                    HStack {
                        illustrationSymbol.makeView(size: 100)
                        Text(hqtfd.name)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    if symbol.hqtfd == hqtfd {
                        Image(systemName: "checkmark.circle.fill")
                    } else {
                        Image(systemName: "circle")
                    }
                }
            }
        }
        .navigationTitle(Text("HQ / Task Force / Dummy", bundle: .module))
    }
}

public struct AmplifierSelector: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @Binding var symbol: MilitarySymbol
    
    public var body: some View {
        List(Amplifier.allCases) { amplifier in
            let illustrationSymbol = MilitarySymbol(
                context: symbol.context,
                standardIdentity: symbol.standardIdentity,
                dimention: symbol.dimention,
                status: symbol.status,
                hqtfd: symbol.hqtfd,
                amplifier: amplifier,
                descriptor: symbol.descriptor,
                entity: symbol.entity,
                entityType: symbol.entityType,
                entitySubtype: symbol.entitySubtype,
                isCivilian: symbol.isCivilian,
                isAlternateStatusAmplifiers: symbol.isAlternateStatusAmplifiers)
            
            Button {
                symbol.amplifier = amplifier
                dismiss()
            } label: {
                LabeledContent {
                    HStack {
                        illustrationSymbol.makeView(size: 100)
                        Text(amplifier.name)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    if symbol.amplifier == amplifier {
                        Image(systemName: "checkmark.circle.fill")
                    } else {
                        Image(systemName: "circle")
                    }
                }
            }
        }
        .navigationTitle(Text("Amplifier", bundle: .module))
    }
}

public struct DescriptorSelector: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @Binding var symbol: MilitarySymbol
    
    public var body: some View {
        List(symbol.amplifier.descriptors) { descriptor in
            let illustrationSymbol = MilitarySymbol(
                context: symbol.context,
                standardIdentity: symbol.standardIdentity,
                dimention: symbol.dimention,
                status: symbol.status,
                hqtfd: symbol.hqtfd,
                amplifier: symbol.amplifier,
                descriptor: descriptor,
                entity: symbol.entity,
                entityType: symbol.entityType,
                entitySubtype: symbol.entitySubtype,
                isCivilian: symbol.isCivilian,
                isAlternateStatusAmplifiers: symbol.isAlternateStatusAmplifiers)
            
            Button {
                symbol.descriptor = descriptor
                dismiss()
            } label: {
                LabeledContent {
                    HStack {
                        illustrationSymbol.makeView(size: 100)
                        Text(descriptor.name)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    if symbol.descriptor == descriptor {
                        Image(systemName: "checkmark.circle.fill")
                    } else {
                        Image(systemName: "circle")
                    }
                }
            }
        }
        .navigationTitle(Text("Descriptor", bundle: .module))
    }
}

public struct EntitySelector: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @Binding var symbol: MilitarySymbol
    
    public var body: some View {
        List(symbol.dimention.entities) { entity in
            let illustrationSymbol = MilitarySymbol(
                context: symbol.context,
                standardIdentity: symbol.standardIdentity,
                dimention: symbol.dimention,
                status: symbol.status,
                hqtfd: symbol.hqtfd,
                amplifier: symbol.amplifier,
                descriptor: symbol.descriptor,
                entity: entity,
                entityType: symbol.entityType,
                entitySubtype: symbol.entitySubtype,
                isCivilian: symbol.isCivilian,
                isAlternateStatusAmplifiers: symbol.isAlternateStatusAmplifiers)
            
            Button {
                symbol.entity = entity
                dismiss()
            } label: {
                LabeledContent {
                    HStack {
                        illustrationSymbol.makeView(size: 100)
                        Text(entity.name)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    if symbol.entity == entity {
                        Image(systemName: "checkmark.circle.fill")
                    } else {
                        Image(systemName: "circle")
                    }
                }
            }
        }
        .navigationTitle(Text("Entity", bundle: .module))
    }
}

public struct EntityTypeSelector: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @Binding var symbol: MilitarySymbol
    
    public var body: some View {
        List(symbol.entity.types) { entityType in
            let illustrationSymbol = MilitarySymbol(
                context: symbol.context,
                standardIdentity: symbol.standardIdentity,
                dimention: symbol.dimention,
                status: symbol.status,
                hqtfd: symbol.hqtfd,
                amplifier: symbol.amplifier,
                descriptor: symbol.descriptor,
                entity: symbol.entity,
                entityType: entityType,
                entitySubtype: symbol.entitySubtype,
                isCivilian: symbol.isCivilian,
                isAlternateStatusAmplifiers: symbol.isAlternateStatusAmplifiers)
            
            Button {
                symbol.entityType = entityType
                dismiss()
            } label: {
                LabeledContent {
                    HStack {
                        illustrationSymbol.makeView(size: 100)
                        Text(entityType.name)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    if symbol.entityType == entityType {
                        Image(systemName: "checkmark.circle.fill")
                    } else {
                        Image(systemName: "circle")
                    }
                }
            }
        }
        .navigationTitle(Text("Entity Type", bundle: .module))
    }
}

public struct EntitySubtypeSelector: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @Binding var symbol: MilitarySymbol
    
    public var body: some View {
        List(symbol.entityType.subtypes) { entitySubtype in
            let illustrationSymbol = MilitarySymbol(
                context: symbol.context,
                standardIdentity: symbol.standardIdentity,
                dimention: symbol.dimention,
                status: symbol.status,
                hqtfd: symbol.hqtfd,
                amplifier: symbol.amplifier,
                descriptor: symbol.descriptor,
                entity: symbol.entity,
                entityType: symbol.entityType,
                entitySubtype: entitySubtype,
                isCivilian: symbol.isCivilian,
                isAlternateStatusAmplifiers: symbol.isAlternateStatusAmplifiers)
            
            Button {
                symbol.entitySubtype = entitySubtype
                dismiss()
            } label: {
                LabeledContent {
                    HStack {
                        illustrationSymbol.makeView(size: 100)
                        Text(entitySubtype.name)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    if symbol.entitySubtype == entitySubtype {
                        Image(systemName: "checkmark.circle.fill")
                    } else {
                        Image(systemName: "circle")
                    }
                }
            }
        }
        .navigationTitle(Text("Entity Subtype", bundle: .module))
    }
}
