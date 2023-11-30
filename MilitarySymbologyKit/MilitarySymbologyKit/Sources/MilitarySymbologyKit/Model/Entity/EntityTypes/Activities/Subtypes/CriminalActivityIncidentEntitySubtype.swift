//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//  

import Foundation

enum CriminalActivityIncidentEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case arrest = "01"
    case arson = "02"
    case attemptedCriminalActivity = "03"
    case driveByShooting = "04"
    case drugRelated = "05"
    case extortion = "06"
    case graffiti = "07"
    case killing = "08"
    case poisoning = "09"
    case civilRioting = "10"
    case boobyTrap = "11"
    case homeEviction = "12"
    case blackMarketing = "13"
    case vandalismLootRansackPlunder = "14"
    case jailBreak = "15"
    case robbery = "16"
    case theft = "17"
    case burglary = "18"
    case smuggling = "19"
    case rockThrowing = "20"
    case deadBody = "21"
    case sabotage = "22"
    case suspiciousActivity = "23"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            String(localized: "None")
            
        case .arrest:
            String(localized: "Arrest", comment: "Criminal Activity Incident Entity Subtype")
            
        case .arson:
            String(localized: "Arson", comment: "Criminal Activity Incident Entity Subtype")
            
        case .attemptedCriminalActivity:
            String(localized: "Attempted Criminal Activity", comment: "Criminal Activity Incident Entity Subtype")
            
        case .driveByShooting:
            String(localized: "Drive-by Shooting", comment: "Criminal Activity Incident Entity Subtype")
            
        case .drugRelated:
            String(localized: "Drug Related", comment: "Criminal Activity Incident Entity Subtype")
            
        case .extortion:
            String(localized: "Extortion", comment: "Criminal Activity Incident Entity Subtype")
            
        case .graffiti:
            String(localized: "Graffiti", comment: "Criminal Activity Incident Entity Subtype")
            
        case .killing:
            String(localized: "Killing", comment: "Criminal Activity Incident Entity Subtype")
            
        case .poisoning:
            String(localized: "Poisoning", comment: "Criminal Activity Incident Entity Subtype")
            
        case .civilRioting:
            String(localized: "Civil Rioting", comment: "Criminal Activity Incident Entity Subtype")
            
        case .boobyTrap:
            String(localized: "Booby Trap", comment: "Criminal Activity Incident Entity Subtype")
            
        case .homeEviction:
            String(localized: "Home Eviction", comment: "Criminal Activity Incident Entity Subtype")
            
        case .blackMarketing:
            String(localized: "Black Marketing", comment: "Criminal Activity Incident Entity Subtype")
            
        case .vandalismLootRansackPlunder:
            String(localized: "Vandalism / Loot / Ransack / Plunder", comment: "Criminal Activity Incident Entity Subtype")
            
        case .jailBreak:
            String(localized: "Jail Break", comment: "Criminal Activity Incident Entity Subtype")
            
        case .robbery:
            String(localized: "Robbery", comment: "Criminal Activity Incident Entity Subtype")
            
        case .theft:
            String(localized: "Theft", comment: "Criminal Activity Incident Entity Subtype")
            
        case .burglary:
            String(localized: "Burglary", comment: "Criminal Activity Incident Entity Subtype")
            
        case .smuggling:
            String(localized: "Smuggling", comment: "Criminal Activity Incident Entity Subtype")
            
        case .rockThrowing:
            String(localized: "Rock Throwing", comment: "Criminal Activity Incident Entity Subtype")
            
        case .deadBody:
            String(localized: "Dead Body", comment: "Criminal Activity Incident Entity Subtype")
            
        case .sabotage:
            String(localized: "Sabotage", comment: "Criminal Activity Incident Entity Subtype")
            
        case .suspiciousActivity:
            String(localized: "Suspicious Activity", comment: "Criminal Activity Incident Entity Subtype")
        }
    }
}
