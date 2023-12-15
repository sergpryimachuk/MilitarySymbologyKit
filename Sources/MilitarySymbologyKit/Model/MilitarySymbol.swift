//
//  Created with ♥ by Serhii Pryimachuk on 10.11.2023.
//

import Foundation

public struct MilitarySymbol: Identifiable, Hashable {
    public let version: String = "01"
    public var context: Context = .reality
    public var standardIdentity: StandardIdentity = .unknown
    public var dimension: Dimension = .landUnits {
        didSet {
            if let first = dimension.entities.first {
                entity = first
            } else {
                entity = .none
            }
        }
    }

    public var status: Status = .present
    public var hqtfd: HQTFD = .none
    public var amplifier: Amplifier = .none {
        didSet {
            if let first = amplifier.descriptors.first {
                descriptor = first
            } else {
                descriptor = .none
            }
        }
    }

    public var descriptor: AnyDescriptor = .none
    public var entity: AnyEntity = .none {
        didSet {
            if let first = entity.types.first {
                entityType = first
            } else {
                entityType = .none
            }
        }
    }

    public var entityType: AnyEntityType = .none {
        didSet {
            if let first = entityType.subtypes.first {
                entitySubtype = first
            } else {
                entitySubtype = .none
            }
        }
    }

    public var entitySubtype: AnyEntitySubtype = .none

    public var isCivilian: Bool = false
    public var isAlternateStatusAmplifiers: Bool = false

    public let id = UUID()

    public var sidc: String {
        version
            + context.id
            + standardIdentity.id
            + dimension.id
            + status.id
            + hqtfd.id
            + amplifier.id
            + descriptor.id
            + entity.id
            + entityType.id
            + entitySubtype.id
            + "0000" // Modifiers are not taken into account for now.
    }
//    
//    public init() {
//        self.context = .reality
//        self.standardIdentity = .unknown
//        self.dimension = .landUnits
//        self.status = .present
//        self.hqtfd = .none
//        self.amplifier = .none
//        self.descriptor = .none
//        self.entity = .none
//        self.entityType = .none
//        self.entitySubtype = .none
//        self.isCivilian = false
//        self.isAlternateStatusAmplifiers = false
//    }
}
