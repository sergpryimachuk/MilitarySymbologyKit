//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

extension AirUnitEntity.MilitaryEntityType {
    enum FixedWingEntitySubtype: String, CaseIterable, EntitySubtype {
        case none = "00"
        case medicalEvacuationMEDEVAC = "01"
        case attackStrike = "02"
        case bomber = "03"
        case fighter = "04"
        case fighterBomber = "05"
        case cargo = "07"
        case electronicCombatEC_Jammer = "08"
        case tanker = "09"
        case patrol = "10"
        case reconnaissance = "11"
        case trainer = "12"
        case utility = "13"
        case vstol = "14"
        case airborneCommandPostACP = "15"
        case airborneEarlyWarningAEW = "16"
        case antisurfaceWarfare = "17"
        case antisubmarineWarfare = "18"
        case communications = "19"
        case combatSearchAndRescueCSAR = "20"
        case electronicSupportES = "21"
        case government = "22"
        case mineCountermeasuresMCM = "23"
        case personnelRecovery = "24"
        case searchAndRescue = "25"
        case specialOperationsForces = "26"
        case ultraLight = "27"
        case photographicReconnaissance = "28"
        case veryImportantPersonVIP = "29"
        case suppressionOfEnemyAirDefense = "30"
        case passenger = "31"
        case escort = "32"
        case electronicAttackEA = "33"

        var id: String { rawValue }

        var name: String {
            switch self {
            case .none:
                String(localized: "None", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .medicalEvacuationMEDEVAC:
                String(localized: "Medical Evacuation (MEDEVAC)", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .attackStrike:
                String(localized: "Attack/Strike", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .bomber:
                String(localized: "Bomber", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .fighter:
                String(localized: "Fighter", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .fighterBomber:
                String(localized: "Fighter/Bomber", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .cargo:
                String(localized: "Cargo", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .electronicCombatEC_Jammer:
                String(localized: "Electronic Combat (EC)/Jammer", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .tanker:
                String(localized: "Tanker", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .patrol:
                String(localized: "Patrol", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .reconnaissance:
                String(localized: "Reconnaissance", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .trainer:
                String(localized: "Trainer", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .utility:
                String(localized: "Utility", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .vstol:
                String(localized: "VSTOL", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .airborneCommandPostACP:
                String(localized: "Airborne Command Post (ACP)", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .airborneEarlyWarningAEW:
                String(localized: "Airborne Early Warning (AEW)", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .antisurfaceWarfare:
                String(localized: "Antisurface Warfare", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .antisubmarineWarfare:
                String(localized: "Antisubmarine Warfare", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .communications:
                String(localized: "Communications", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .combatSearchAndRescueCSAR:
                String(localized: "Combat Search and Rescue (CSAR)", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .electronicSupportES:
                String(localized: "Electronic Support (ES)", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .government:
                String(localized: "Government", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .mineCountermeasuresMCM:
                String(localized: "Mine Countermeasures (MCM)", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .personnelRecovery:
                String(localized: "Personnel Recovery", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .searchAndRescue:
                String(localized: "Search and Rescue", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .specialOperationsForces:
                String(localized: "Special Operations Forces", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .ultraLight:
                String(localized: "Ultra Light", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .photographicReconnaissance:
                String(localized: "Photographic Reconnaissance", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .veryImportantPersonVIP:
                String(localized: "Very Important Person (VIP)", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .suppressionOfEnemyAirDefense:
                String(localized: "Suppression of Enemy Air Defense", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .passenger:
                String(localized: "Passenger", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .escort:
                String(localized: "Escort", bundle: .module, comment: "Fixed Wing Entity Subtype")

            case .electronicAttackEA:
                String(localized: "Electronic Attack (EA)", bundle: .module, comment: "Fixed Wing Entity Subtype")
            }
        }
    }
}
