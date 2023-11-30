//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

public extension LandUnitEntity {
    public enum FiresEntityType: String, CaseIterable, Identifiable, EntityType {
        case none = "00"
        case airDefense = "01"
        case airLandNavalGunfireLiaison = "02"
        case fieldArtillery = "03"
        case fieldArtilleryObserver = "04"
        case jointFireSupport = "05"
        case meteorological = "06"
        case missile = "07"
        case mortar = "08"
        case survey = "09"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None", bundle: .module, comment: "Fire Support Entity Type")

            case .airDefense:
                String(localized: "Air Defense", bundle: .module, comment: "Fire Support Entity Type")

            case .airLandNavalGunfireLiaison:
                String(localized: "Air-Land-Naval Gunfire Liaison", bundle: .module, comment: "Fire Support Entity Type")

            case .fieldArtillery:
                String(localized: "Field Artillery", bundle: .module, comment: "Fire Support Entity Type")

            case .fieldArtilleryObserver:
                String(localized: "Field Artillery Observer", bundle: .module, comment: "Fire Support Entity Type")

            case .jointFireSupport:
                String(localized: "Joint Fire Support", bundle: .module, comment: "Fire Support Entity Type")

            case .meteorological:
                String(localized: "Meteorological", bundle: .module, comment: "Fire Support Entity Type")

            case .missile:
                String(localized: "Missile", bundle: .module, comment: "Fire Support Entity Type")

            case .mortar:
                String(localized: "Mortar", bundle: .module, comment: "Fire Support Entity Type")

            case .survey:
                String(localized: "Survey", bundle: .module, comment: "Fire Support Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            switch self {
            case .none:
                [.none]
            case .airDefense:
                AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
                    + AirDefenseEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .fieldArtillery:
                AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
                    + FieldArtilleryEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .mortar:
                AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
                    + MortarEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            default:
                AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            }
        }
    }
}
