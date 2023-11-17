//
//  Created with ♥ by Serhii Pryimachuk on 17.11.2023.
//  

import Foundation

enum IntelligenceEntityType: String, CaseIterable, Identifiable {
    case analysis = "01"
    case counterintelligence = "02"
    case directionFinding = "03"
    case electronicRanging = "04"
    case electronicWarfare = "05"
    case interceptSearchAndRecording = "06"
    case interrogation = "07"
    case jamming = "08"
    case jointIntelligenceCenter = "09"
    case militaryIntelligence = "10"
    case search = "11"
    case sensor = "12"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .analysis:
            return String(localized: "Analysis", comment: "Intelligence Entity Type")
            
        case .counterintelligence:
            return String(localized: "Counterintelligence", comment: "Intelligence Entity Type")
            
        case .directionFinding:
            return String(localized: "Direction Finding", comment: "Intelligence Entity Type")
            
        case .electronicRanging:
            return String(localized: "Electronic Ranging", comment: "Intelligence Entity Type")
            
        case .electronicWarfare:
            return String(localized: "Electronic Warfare", comment: "Intelligence Entity Type")
            
        case .interceptSearchAndRecording:
            return String(localized: "Intercept (Search and Recording)", comment: "Intelligence Entity Type")
            
        case .interrogation:
            return String(localized: "Interrogation", comment: "Intelligence Entity Type")
            
        case .jamming:
            return String(localized: "Jamming", comment: "Intelligence Entity Type")
            
        case .jointIntelligenceCenter:
            return String(localized: "Joint Intelligence Center", comment: "Intelligence Entity Type")
            
        case .militaryIntelligence:
            return String(localized: "Military Intelligence", comment: "Intelligence Entity Type")
            
        case .search:
            return String(localized: "Search", comment: "Intelligence Entity Type")
            
        case .sensor:
            return String(localized: "Sensor", comment: "Intelligence Entity Type")
        }
    }
}
