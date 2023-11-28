//
//  Created with ♥ by Serhii Pryimachuk on 17.11.2023.
//

import Foundation

enum ProtectionEntityType: String, CaseIterable, Identifiable, EntityType {
    case chemicalBiologicalRadiologicalNuclearDefense = "01"
    case combatSupportManeuverEnhancement = "02"
    case criminalInvestigationDivision = "03"
    case diving = "04"
    case dog = "05"
    case drilling = "06"
    case engineer = "07"
    case explosiveOrdnanceDisposal = "08"
    case fieldCampConstruction = "09"
    case fireFightingFireProtection = "10"
    case geospatialSupportGeospatialInformationSupport = "11"
    case militaryPolice = "12"
    case mine = "13"
    case mineClearing = "14"
    case mineLaunching = "15"
    case mineLaying = "16"
    case security = "17"
    case searchAndRescue = "18"
    case securityPoliceAir = "19"
    case shorePatrol = "20"
    case topographic = "21"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .chemicalBiologicalRadiologicalNuclearDefense:
            String(localized: "Chemical Biological Radiological Nuclear Defense", comment: "Protection Entity Type")

        case .combatSupportManeuverEnhancement:
            String(localized: "Combat Support (Maneuver Enhancement)", comment: "Protection Entity Type")

        case .criminalInvestigationDivision:
            String(localized: "Criminal Investigation Division", comment: "Protection Entity Type")

        case .diving:
            String(localized: "Diving", comment: "Protection Entity Type")

        case .dog:
            String(localized: "Dog", comment: "Protection Entity Type")

        case .drilling:
            String(localized: "Drilling", comment: "Protection Entity Type")

        case .engineer:
            String(localized: "Engineer", comment: "Protection Entity Type")

        case .explosiveOrdnanceDisposal:
            String(localized: "Explosive Ordnance Disposal (EOD)", comment: "Protection Entity Type")

        case .fieldCampConstruction:
            String(localized: "Field Camp Construction", comment: "Protection Entity Type")

        case .fireFightingFireProtection:
            String(localized: "Fire Fighting/Fire Protection", comment: "Protection Entity Type")

        case .geospatialSupportGeospatialInformationSupport:
            String(localized: "Geospatial Support/Geospatial Information Support", comment: "Protection Entity Type")

        case .militaryPolice:
            String(localized: "Military Police", comment: "Protection Entity Type")

        case .mine:
            String(localized: "Mine", comment: "Protection Entity Type")

        case .mineClearing:
            String(localized: "Mine Clearing", comment: "Protection Entity Type")

        case .mineLaunching:
            String(localized: "Mine Launching", comment: "Protection Entity Type")

        case .mineLaying:
            String(localized: "Mine Laying", comment: "Protection Entity Type")

        case .security:
            String(localized: "Security", comment: "Protection Entity Type")

        case .searchAndRescue:
            String(localized: "Search and Rescue", comment: "Protection Entity Type")

        case .securityPoliceAir:
            String(localized: "Security Police (Air)", comment: "Protection Entity Type")

        case .shorePatrol:
            String(localized: "Shore Patrol", comment: "Protection Entity Type")

        case .topographic:
            String(localized: "Topographic", comment: "Protection Entity Type")
        }
    }

    var subtypes: [AnyEntitySubtype] {
        switch self {
        case .chemicalBiologicalRadiologicalNuclearDefense:
            AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
                + ChemicalBiologicalRadiologicalNuclearDefenseEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .engineer:
            AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
                + EngineerEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .security:
            AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
                + EngineerEntitySubtype.allCases.map { AnyEntitySubtype($0) }.dropLast()
        default:
            AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        }
    }
}
