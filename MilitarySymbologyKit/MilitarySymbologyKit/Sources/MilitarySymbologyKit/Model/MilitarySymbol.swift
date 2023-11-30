//
//  Created with ♥ by Serhii Pryimachuk on 10.11.2023.
//

import Foundation
import SwiftUI

struct MilitarySymbol: Identifiable, Hashable {
    let version: String = "01"
    var context: Context = .reality
    var standardIdentity: StandardIdentity = .unknown
    var dimention: Dimension = .air {
        didSet {
            if let first = dimention.entities.first {
                entity = first
            } else {
                entity = .none
            }
        }
    }
    var status: Status = .present
    var hqtfd: HQTFD = .none
    var amplifier: Amplifier = .none {
        didSet {
            if let first = amplifier.descriptors.first {
                descriptor = first
            } else {
                descriptor = .none
            }
        }
    }
    var descriptor: AnyDescriptor = .none
    var entity: AnyEntity = .none {
        didSet {
            if let first = entity.types.first {
                entityType = first
            } else {
                entityType = .none
            }
        }
    }
    var entityType: AnyEntityType = .none {
        didSet {
            if let first = entityType.subtypes.first {
                entitySubtype = first
            } else {
                entitySubtype = .none
            }
        }
    }
    var entitySubtype: AnyEntitySubtype = .none
    
    var isCivilian: Bool = false
    var isAlternateStatusAmplifiers: Bool = false
    
    let id = UUID()
    
    var sidc: String {
        version
        + context.id
        + standardIdentity.id
        + dimention.id
        + status.id
        + hqtfd.id
        + amplifier.id
        + descriptor.id
        + entity.id
        + entityType.id
        + entitySubtype.id + "0000"
    }
}

extension MilitarySymbol {
    init(sidc: String) throws {
        if sidc.count != 20 {
            throw MilitarySymbolError.sidcIsNot20
        } else {
            guard let context = Context(rawValue: sidc[2]) else {
                print("Context")
                throw MilitarySymbolError.contextParcingFailed
            }
            self.context = context
            
            guard let standardIdentity = StandardIdentity(rawValue: sidc[3]) else {
                print("StandardIdentity")
                throw MilitarySymbolError.standardIdentityParcingFailed
            }
            self.standardIdentity = standardIdentity
            
            guard let dimention = Dimension(rawValue: sidc[4] + sidc[5]) else {
                print("Dimension")
                throw MilitarySymbolError.dimentionParcingFailed
            }
            self.dimention = dimention
            
            guard let status = Status(rawValue: sidc[6]) else {
                print("Status")
                throw MilitarySymbolError.statusParcingFailed
            }
            self.status = status
            
            guard let hqtfd = HQTFD(rawValue: sidc[7]) else {
                print("HQTFD")
                throw MilitarySymbolError.hqtfdParcingFailed
            }
            self.hqtfd = hqtfd
            
            guard let amplifier = Amplifier(rawValue: sidc[8]) else {
                print("Amplifier")
                throw MilitarySymbolError.amplifierParcingFailed
            }
            self.amplifier = amplifier
            
            guard let descriptor = amplifier.descriptors.first(where: { $0.id == sidc[9] }) else {
                print("Descriptor")
                throw MilitarySymbolError.descriptorParcingFailed
            }
            self.descriptor = descriptor
            
            let entityDigits: String = sidc[10] + sidc[11]
            guard let entity = dimention.entities.first(where: { $0.id == entityDigits }) else {
                print("Entity")
                throw MilitarySymbolError.entityParcingFailed
            }
            self.entity = entity
            
            let entityTypeDigits: String = sidc[12] + sidc[13]
            guard let entityType = entity.types.first(where: { $0.id == entityTypeDigits }) else {
                print("EntityType")
                throw MilitarySymbolError.entityTypeParcingFailed
            }
            self.entityType = entityType
            
            let entitySybTypeDigits = sidc[14] + sidc[15]
            guard let entitySubtype = entityType.subtypes.first(where: { $0.id == entitySybTypeDigits }) else {
                print("EntitySubtype")
                throw MilitarySymbolError.entitySubtypeParcingFailed
            }
            self.entitySubtype = entitySubtype
        }
    }
}

extension MilitarySymbol {
    static func searched(text: String, currentSymbol: MilitarySymbol?) -> [MilitarySymbol] {
        if text.isEmpty {
            return []
        } else {
            var result: [MilitarySymbol] = []
            Dimension.allCases.forEach { dimention in
                dimention.entities.forEach { entity in
                    entity.types.forEach { entityType in
                        entityType.subtypes.forEach { entitySubtype in
                            if entity.name.localizedStandardContains(text)
                                || entityType.name.localizedStandardContains(text)
                                || entitySubtype.name.localizedStandardContains(text) {
                                if let currentSymbol {
                                    result.append(
                                        /// Version with current symbol properties.
                                        MilitarySymbol(context: currentSymbol.context,
                                                       standardIdentity: currentSymbol.standardIdentity,
                                                       dimention: dimention,
                                                       status: currentSymbol.status,
                                                       hqtfd: currentSymbol.hqtfd,
                                                       amplifier: currentSymbol.amplifier,
                                                       descriptor: currentSymbol.descriptor,
                                                       entity: entity,
                                                       entityType: entityType,
                                                       entitySubtype: entitySubtype,
                                                       isCivilian: currentSymbol.isCivilian,
                                                       isAlternateStatusAmplifiers: currentSymbol.isAlternateStatusAmplifiers)
                                    )
                                } else {
                                    result.append(
                                        /// Version with default symbol properties.
                                        MilitarySymbol(dimention: dimention,
                                                       entity: entity,
                                                       entityType: entityType,
                                                       entitySubtype: entitySubtype)
                                    )
                                }
                            }
                        }
                    }
                }
            }
            return result
        }
    }
}