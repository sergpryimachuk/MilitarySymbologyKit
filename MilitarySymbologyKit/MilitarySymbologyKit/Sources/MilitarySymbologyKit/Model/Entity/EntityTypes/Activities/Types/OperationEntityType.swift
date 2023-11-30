//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//  

import Foundation

enum OperationEntityType: String, CaseIterable, EntityType {
    case none = "00"
    case patrolling = "01"
    case militaryInformationSupportOperation = "02"
    case foragingSearching = "03"
    case recruitment = "04"
    case mineLaying = "05"
    case spy = "06"
    case warrantServed = "07"
    case exfiltration = "08"
    case infiltration = "09"
    case meeting = "10"
    case raidOnHouse = "11"
    case emergencyOperation = "12"
    case emergencyMedicalOperation = "13"
    case fireFightingOperation = "14"
    case lawEnforcementOperation = "15"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            String(localized: "None")
        case .patrolling:
            String(localized: "Patrolling", comment: "Operation Entity Type")
        case .militaryInformationSupportOperation:
            String(localized: "Military Information Support Operation (MISO)", comment: "Operation Entity Type")
        case .foragingSearching:
            String(localized: "Foraging/Searching", comment: "Operation Entity Type")
        case .recruitment:
            String(localized: "Recruitment", comment: "Operation Entity Type")
        case .mineLaying:
            String(localized: "Mine Laying", comment: "Operation Entity Type")
        case .spy:
            String(localized: "Spy", comment: "Operation Entity Type")
        case .warrantServed:
            String(localized: "Warrant Served", comment: "Operation Entity Type")
        case .exfiltration:
            String(localized: "Exfiltration", comment: "Operation Entity Type")
        case .infiltration:
            String(localized: "Infiltration", comment: "Operation Entity Type")
        case .meeting:
            String(localized: "Meeting", comment: "Operation Entity Type")
        case .raidOnHouse:
            String(localized: "Raid on House", comment: "Operation Entity Type")
        case .emergencyOperation:
            String(localized: "Emergency Operation", comment: "Operation Entity Type")
        case .emergencyMedicalOperation:
            String(localized: "Emergency Medical Operation", comment: "Operation Entity Type")
        case .fireFightingOperation:
            String(localized: "Fire Fighting Operation", comment: "Operation Entity Type")
        case .lawEnforcementOperation:
            String(localized: "Law Enforcement Operation", comment: "Operation Entity Type")
        }
    }
    
    var subtypes: [AnyEntitySubtype] {
        switch self {
        case .militaryInformationSupportOperation:
            MISOEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .recruitment:
            RecruitmentEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .meeting:
            MeetingEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .emergencyOperation:
            EmergencyOperationEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .emergencyMedicalOperation:
            EmergencyMedicalOperationEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .fireFightingOperation:
            FireFightingOperationEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .lawEnforcementOperation:
            LawEnforcementOperationEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        default:
            [.none]
        }
    }
}
