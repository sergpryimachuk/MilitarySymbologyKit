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
            return String(localized: "None")
        case .patrolling:
            return String(localized: "Patrolling", comment: "Operation Entity Type")
        case .militaryInformationSupportOperation:
            return String(localized: "Military Information Support Operation (MISO)", comment: "Operation Entity Type")
        case .foragingSearching:
            return String(localized: "Foraging/Searching", comment: "Operation Entity Type")
        case .recruitment:
            return String(localized: "Recruitment", comment: "Operation Entity Type")
        case .mineLaying:
            return String(localized: "Mine Laying", comment: "Operation Entity Type")
        case .spy:
            return String(localized: "Spy", comment: "Operation Entity Type")
        case .warrantServed:
            return String(localized: "Warrant Served", comment: "Operation Entity Type")
        case .exfiltration:
            return String(localized: "Exfiltration", comment: "Operation Entity Type")
        case .infiltration:
            return String(localized: "Infiltration", comment: "Operation Entity Type")
        case .meeting:
            return String(localized: "Meeting", comment: "Operation Entity Type")
        case .raidOnHouse:
            return String(localized: "Raid on House", comment: "Operation Entity Type")
        case .emergencyOperation:
            return String(localized: "Emergency Operation", comment: "Operation Entity Type")
        case .emergencyMedicalOperation:
            return String(localized: "Emergency Medical Operation", comment: "Operation Entity Type")
        case .fireFightingOperation:
            return String(localized: "Fire Fighting Operation", comment: "Operation Entity Type")
        case .lawEnforcementOperation:
            return String(localized: "Law Enforcement Operation", comment: "Operation Entity Type")
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
