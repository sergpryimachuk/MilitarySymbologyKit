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
            
            Section {
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 140, height: 140)
                            .foregroundStyle(.gray.opacity(0.1))
                        
                        symbol.makeView(size: 200)
                            .padding(-30)
                    }
                    
                    VStack {
                        
                        Button {
                            symbol = MilitarySymbol()
                        } label: {
                            Label("Favorite", systemImage: "star")
                                .frame(maxWidth: .infinity, alignment: .center)
                                .bold()
                        }
                        .buttonStyle(.bordered)
                        
                        Button {
                            symbol = MilitarySymbol()
                        } label: {
                            Label("Reset", systemImage: "trash")
                                .frame(maxWidth: .infinity, alignment: .center)
                                .foregroundStyle(.red)
                                .bold()
                        }
                        .buttonStyle(.bordered)
                    }
                }
            }
            
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
                Text("Standard Identity", bundle: .module)
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
                Text("HQTFDummy", bundle: .module)
            }
            
            // MARK: - Amplifier and Descriptor
            Section {
                NavigationLink {
                    AmplifierSelector(symbol: $symbol)
                } label: {
                    Text("Select amplifier", bundle: .module)
                }
                NavigationLink {
                    DescriptorSelector(symbol: $symbol)
                } label: {
                    Text("Select descriptor", bundle: .module)
                }
            } header: {
                Text("Amplifier / Descriptor", bundle: .module)
            }
            
            // MARK: - Entity
            Section {
                NavigationLink {
                    EntitySelector(symbol: $symbol)
                } label: {
                    Text("Select entity", bundle: .module)
                }
                NavigationLink {
                    EntityTypeSelector(symbol: $symbol)
                } label: {
                    Text("Select entity type", bundle: .module)
                }
                NavigationLink {
                    EntitySubtypeSelector(symbol: $symbol)
                } label: {
                    Text("Select entity subtype", bundle: .module)
                }
            } header: {
                Text("Entity", bundle: .module)
            }
            
        }.listStyle(.insetGrouped)
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
                HStack(spacing: 12) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 70, height: 70)
                            .foregroundStyle(.gray.opacity(0.1))
                        
                        illustrationSymbol.makeView(size: 100)
                            .padding(-30)
                    }
                    Divider()
                    Text(context.name)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                    
                    Spacer()
                    if symbol.context == context {
                        Image(systemName: "checkmark")
                            .foregroundStyle(Color.accentColor)
                            .font(.title)
                    }
                }
            }.tint(.primary)
            
        }.listStyle(.grouped)
        
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
                HStack(spacing: 12) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 70, height: 70)
                            .foregroundStyle(.gray.opacity(0.1))
                        
                        illustrationSymbol.makeView(size: 100)
                            .padding(-30)
                    }
                    Divider()
                    Text(standardIdentity.name)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                    
                    Spacer()
                    if symbol.standardIdentity == standardIdentity {
                        Image(systemName: "checkmark")
                            .foregroundStyle(Color.accentColor)
                            .font(.title)
                    }
                }
            }.tint(.primary)
            
        }.listStyle(.grouped)
        
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
                HStack(spacing: 12) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 70, height: 70)
                            .foregroundStyle(.gray.opacity(0.1))
                        
                        illustrationSymbol.makeView(size: 100)
                            .padding(-30)
                    }
                    Divider()
                    Text(dimention.name)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                    
                    Spacer()
                    if symbol.dimention == dimention {
                        Image(systemName: "checkmark")
                            .foregroundStyle(Color.accentColor)
                            .font(.title)
                    }
                }
            }.tint(.primary)
            
        }
        .listStyle(.grouped)
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
                HStack(spacing: 12) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 70, height: 70)
                            .foregroundStyle(.gray.opacity(0.1))
                        
                        illustrationSymbol.makeView(size: 100)
                            .padding(-30)
                    }
                    Divider()
                    Text(status.name)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                    
                    Spacer()
                    if symbol.status == status {
                        Image(systemName: "checkmark")
                            .foregroundStyle(Color.accentColor)
                            .font(.title)
                    }
                }
            }.tint(.primary)
            
        }
        .listStyle(.grouped)
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
                HStack(spacing: 12) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 70, height: 70)
                            .foregroundStyle(.gray.opacity(0.1))
                        
                        illustrationSymbol.makeView(size: 100)
                            .padding(-30)
                    }
                    Divider()
                    Text(hqtfd.name)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                    
                    Spacer()
                    if symbol.hqtfd == hqtfd {
                        Image(systemName: "checkmark")
                            .foregroundStyle(Color.accentColor)
                            .font(.title)
                    }
                }
            }.tint(.primary)
            
        }
        .listStyle(.grouped)
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
                HStack(spacing: 12) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 70, height: 70)
                            .foregroundStyle(.gray.opacity(0.1))
                        
                        illustrationSymbol.makeView(size: 100)
                            .padding(-30)
                    }
                    Divider()
                    Text(amplifier.name)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                    
                    Spacer()
                    if symbol.amplifier == amplifier {
                        Image(systemName: "checkmark")
                            .foregroundStyle(Color.accentColor)
                            .font(.title)
                    }
                }
            }.tint(.primary)
            
        }
        .listStyle(.grouped)
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
                HStack(spacing: 12) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 70, height: 70)
                            .foregroundStyle(.gray.opacity(0.1))
                        
                        illustrationSymbol.makeView(size: 100)
                            .padding(-30)
                    }
                    Divider()
                    Text(descriptor.name)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                    
                    Spacer()
                    if symbol.descriptor == descriptor {
                        Image(systemName: "checkmark")
                            .foregroundStyle(Color.accentColor)
                            .font(.title)
                    }
                }
            }.tint(.primary)
            
        }
        .listStyle(.grouped)
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
                HStack(spacing: 12) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 70, height: 70)
                            .foregroundStyle(.gray.opacity(0.1))
                        
                        illustrationSymbol.makeView(size: 100)
                            .padding(-30)
                    }
                    Divider()
                    Text(entity.name)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                    
                    Spacer()
                    if symbol.entity == entity {
                        Image(systemName: "checkmark")
                            .foregroundStyle(Color.accentColor)
                            .font(.title)
                    }
                }
            }.tint(.primary)
            
        }
        .listStyle(.grouped)
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
                HStack(spacing: 12) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 70, height: 70)
                            .foregroundStyle(.gray.opacity(0.1))
                        
                        illustrationSymbol.makeView(size: 100)
                            .padding(-30)
                    }
                    Divider()
                    Text(entityType.name)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                    
                    Spacer()
                    if symbol.entityType == entityType {
                        Image(systemName: "checkmark")
                            .foregroundStyle(Color.accentColor)
                            .font(.title)
                    }
                }
            }.tint(.primary)
            
        }
        .listStyle(.grouped)
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
                HStack(spacing: 12) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 70, height: 70)
                            .foregroundStyle(.gray.opacity(0.1))
                        
                        illustrationSymbol.makeView(size: 100)
                            .padding(-30)
                    }
                    Divider()
                    Text(entitySubtype.name)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                    
                    Spacer()
                    if symbol.entitySubtype == entitySubtype {
                        Image(systemName: "checkmark")
                            .foregroundStyle(Color.accentColor)
                            .font(.title)
                    }
                }
            }.tint(.primary)
            
        }
        .listStyle(.grouped)
        .navigationTitle(Text("Entity Subtype", bundle: .module))
    }
}

fileprivate struct PreviewPrapper: View {
    @State private var symbol = MilitarySymbol(isAlternateStatusAmplifiers: true)
    var body: some View {
        NavigationStack {
            MilitarySymbolSelector(symbol: $symbol)
                .navigationTitle(Text(verbatim: "Symbol"))
        }
    }
}

#Preview {
    PreviewPrapper()
}
