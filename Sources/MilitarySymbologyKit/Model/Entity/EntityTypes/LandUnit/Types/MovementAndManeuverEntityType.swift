//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

public extension LandUnitEntity {
    enum MovementAndManeuverEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case airAssaultWithOrganicLift = "01"
        case airTrafficServicesAirfieldOperations = "02"
        case amphibious = "03"
        case antitankAntiarmor = "04"
        case armorArmoredMechanizedSelfPropelledTracked = "05"
        case armyAviationAviationRotaryWing = "06"
        case aviationComposite = "07"
        case aviationFixedWing = "08"
        case combat = "09"
        case combinedArms = "10"
        case infantry = "11"
        case observer = "12"
        case reconnaissanceCavalryScout = "13"
        case seaAirLandSEAL = "14"
        case sniper = "15"
        case surveillance = "16"
        case specialForces = "17"
        case specialOperationsForcesSOF = "18"
        case unmannedAerialSystems = "19"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None", bundle: .module)
            case .airAssaultWithOrganicLift:
                String(localized: "Air Assault with Organic Lift", bundle: .module, comment: "Movement and Maneuver Entity Type")

            case .airTrafficServicesAirfieldOperations:
                String(localized: "Air Traffic Services/Airfield Operations", bundle: .module, comment: "Movement and Maneuver Entity Type")

            case .amphibious:
                String(localized: "Amphibious", bundle: .module, comment: "Movement and Maneuver Entity Type")

            case .antitankAntiarmor:
                String(localized: "Antitank/Antiarmor", bundle: .module, comment: "Movement and Maneuver Entity Type")

            case .armorArmoredMechanizedSelfPropelledTracked:
                String(localized: "Armor/Armored/Mechanized/Self-Propelled/Tracked", bundle: .module, comment: "Movement and Maneuver Entity Type")

            case .armyAviationAviationRotaryWing:
                String(localized: "Army Aviation/Aviation Rotary Wing", bundle: .module, comment: "Movement and Maneuver Entity Type")

            case .aviationComposite:
                String(localized: "Aviation Composite", bundle: .module, comment: "Movement and Maneuver Entity Type")

            case .aviationFixedWing:
                String(localized: "Aviation Fixed Wing", bundle: .module, comment: "Movement and Maneuver Entity Type")

            case .combat:
                String(localized: "Combat", bundle: .module, comment: "Movement and Maneuver Entity Type")

            case .combinedArms:
                String(localized: "Combined Arms", bundle: .module, comment: "Movement and Maneuver Entity Type")

            case .infantry:
                String(localized: "Infantry", bundle: .module, comment: "Movement and Maneuver Entity Type")

            case .observer:
                String(localized: "Observer", bundle: .module, comment: "Movement and Maneuver Entity Type")

            case .reconnaissanceCavalryScout:
                String(localized: "Reconnaissance/Cavalry/Scout", bundle: .module, comment: "Movement and Maneuver Entity Type")

            case .seaAirLandSEAL:
                String(localized: "Sea Air Land (SEAL)", bundle: .module, comment: "Movement and Maneuver Entity Type")

            case .sniper:
                String(localized: "Sniper", bundle: .module, comment: "Movement and Maneuver Entity Type")

            case .surveillance:
                String(localized: "Surveillance", bundle: .module, comment: "Movement and Maneuver Entity Type")

            case .specialForces:
                String(localized: "Special Forces", bundle: .module, comment: "Movement and Maneuver Entity Type")

            case .specialOperationsForcesSOF:
                String(localized: "Special Operations Forces (SOF)", bundle: .module, comment: "Movement and Maneuver Entity Type")

            case .unmannedAerialSystems:
                String(localized: "Unmanned Aerial Systems", bundle: .module, comment: "Movement and Maneuver Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            switch self {
            case .none:
                [.none]
            case .antitankAntiarmor:
                AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
                    + AntitankAntiarmorEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .armorArmoredMechanizedSelfPropelledTracked:
                AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
                    + ArmorArmoredMechanizedSelfPropelledTrackedEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .armyAviationAviationRotaryWing, .aviationFixedWing:
                AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
                    + [AnyEntitySubtype(ArmorArmoredMechanizedSelfPropelledTrackedEntitySubtype.reconnaissanceCavalryScout)]
            case .infantry:
                AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
                    + InfantryEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .reconnaissanceCavalryScout:
                AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
                    + ReconnaissanceCavalryScoutEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .specialOperationsForcesSOF:
                AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
                    + SpecialOperationsForcesEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            default:
                AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            }
        }
    }
}
