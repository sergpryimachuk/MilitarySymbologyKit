//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//  

import Foundation

enum MovementAndManeuverEntityType: String, CaseIterable, EntityType {
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
    
    var id: String { rawValue }
    
    var name: String {
        let localizationValue: String.LocalizationValue = switch self {
        case .airAssaultWithOrganicLift:
            "Air Assault with Organic Lift"

        case .airTrafficServicesAirfieldOperations:
            "Air Traffic Services/Airfield Operations"

        case .amphibious:
            "Amphibious"

        case .antitankAntiarmor:
            "Antitank/Antiarmor"

        case .armorArmoredMechanizedSelfPropelledTracked:
            "Armor/Armored/Mechanized/Self-Propelled/Tracked"

        case .armyAviationAviationRotaryWing:
            "Army Aviation/Aviation Rotary Wing"

        case .aviationComposite:
            "Aviation Composite"

        case .aviationFixedWing:
            "Aviation Fixed Wing"

        case .combat:
            "Combat"

        case .combinedArms:
            "Combined Arms"

        case .infantry:
            "Infantry"

        case .observer:
            "Observer"

        case .reconnaissanceCavalryScout:
            "Reconnaissance/Cavalry/Scout"

        case .seaAirLandSEAL:
            "Sea Air Land (SEAL)"

        case .sniper:
            "Sniper"

        case .surveillance:
            "Surveillance"

        case .specialForces:
            "Special Forces"

        case .specialOperationsForcesSOF:
            "Special Operations Forces (SOF)"

        case .unmannedAerialSystems:
            "Unmanned Aerial Systems"
        }
        
        return String(localized: localizationValue, comment: "Movement and Maneuver Entity Type")
    }
}
