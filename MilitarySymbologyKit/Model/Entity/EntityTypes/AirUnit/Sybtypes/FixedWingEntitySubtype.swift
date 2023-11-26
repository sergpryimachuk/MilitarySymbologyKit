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
                return String(localized: "None", comment: "Fixed Wing Entity Subtype")
                
            case .medicalEvacuationMEDEVAC:
                return String(localized: "Medical Evacuation (MEDEVAC)", comment: "Fixed Wing Entity Subtype")
                
            case .attackStrike:
                return String(localized: "Attack/Strike", comment: "Fixed Wing Entity Subtype")
                
            case .bomber:
                return String(localized: "Bomber", comment: "Fixed Wing Entity Subtype")
                
            case .fighter:
                return String(localized: "Fighter", comment: "Fixed Wing Entity Subtype")
                
            case .fighterBomber:
                return String(localized: "Fighter/Bomber", comment: "Fixed Wing Entity Subtype")
                
            case .cargo:
                return String(localized: "Cargo", comment: "Fixed Wing Entity Subtype")
                
            case .electronicCombatEC_Jammer:
                return String(localized: "Electronic Combat (EC)/Jammer", comment: "Fixed Wing Entity Subtype")
                
            case .tanker:
                return String(localized: "Tanker", comment: "Fixed Wing Entity Subtype")
                
            case .patrol:
                return String(localized: "Patrol", comment: "Fixed Wing Entity Subtype")
                
            case .reconnaissance:
                return String(localized: "Reconnaissance", comment: "Fixed Wing Entity Subtype")
                
            case .trainer:
                return String(localized: "Trainer", comment: "Fixed Wing Entity Subtype")
                
            case .utility:
                return String(localized: "Utility", comment: "Fixed Wing Entity Subtype")
                
            case .vstol:
                return String(localized: "VSTOL", comment: "Fixed Wing Entity Subtype")
                
            case .airborneCommandPostACP:
                return String(localized: "Airborne Command Post (ACP)", comment: "Fixed Wing Entity Subtype")
                
            case .airborneEarlyWarningAEW:
                return String(localized: "Airborne Early Warning (AEW)", comment: "Fixed Wing Entity Subtype")
                
            case .antisurfaceWarfare:
                return String(localized: "Antisurface Warfare", comment: "Fixed Wing Entity Subtype")
                
            case .antisubmarineWarfare:
                return String(localized: "Antisubmarine Warfare", comment: "Fixed Wing Entity Subtype")
                
            case .communications:
                return String(localized: "Communications", comment: "Fixed Wing Entity Subtype")
                
            case .combatSearchAndRescueCSAR:
                return String(localized: "Combat Search and Rescue (CSAR)", comment: "Fixed Wing Entity Subtype")
                
            case .electronicSupportES:
                return String(localized: "Electronic Support (ES)", comment: "Fixed Wing Entity Subtype")
                
            case .government:
                return String(localized: "Government", comment: "Fixed Wing Entity Subtype")
                
            case .mineCountermeasuresMCM:
                return String(localized: "Mine Countermeasures (MCM)", comment: "Fixed Wing Entity Subtype")
                
            case .personnelRecovery:
                return String(localized: "Personnel Recovery", comment: "Fixed Wing Entity Subtype")
                
            case .searchAndRescue:
                return String(localized: "Search and Rescue", comment: "Fixed Wing Entity Subtype")
                
            case .specialOperationsForces:
                return String(localized: "Special Operations Forces", comment: "Fixed Wing Entity Subtype")
                
            case .ultraLight:
                return String(localized: "Ultra Light", comment: "Fixed Wing Entity Subtype")
                
            case .photographicReconnaissance:
                return String(localized: "Photographic Reconnaissance", comment: "Fixed Wing Entity Subtype")
                
            case .veryImportantPersonVIP:
                return String(localized: "Very Important Person (VIP)", comment: "Fixed Wing Entity Subtype")
                
            case .suppressionOfEnemyAirDefense:
                return String(localized: "Suppression of Enemy Air Defense", comment: "Fixed Wing Entity Subtype")
                
            case .passenger:
                return String(localized: "Passenger", comment: "Fixed Wing Entity Subtype")
                
            case .escort:
                return String(localized: "Escort", comment: "Fixed Wing Entity Subtype")
                
            case .electronicAttackEA:
                return String(localized: "Electronic Attack (EA)", comment: "Fixed Wing Entity Subtype")
            }
        }
    }
}
