//
//  Created with ♥ by Serhii Pryimachuk on 17.11.2023.
//

import Foundation

extension LandUnitEntity {
    enum IntelligenceEntityType: String, CaseIterable, Identifiable, EntityType {
        case none = "00"
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
            case .none:
                String(localized: "None")
            case .analysis:
                String(localized: "Analysis", comment: "Intelligence Entity Type")
                
            case .counterintelligence:
                String(localized: "Counterintelligence", comment: "Intelligence Entity Type")
                
            case .directionFinding:
                String(localized: "Direction Finding", comment: "Intelligence Entity Type")
                
            case .electronicRanging:
                String(localized: "Electronic Ranging", comment: "Intelligence Entity Type")
                
            case .electronicWarfare:
                String(localized: "Electronic Warfare", comment: "Intelligence Entity Type")
                
            case .interceptSearchAndRecording:
                String(localized: "Intercept (Search and Recording)", comment: "Intelligence Entity Type")
                
            case .interrogation:
                String(localized: "Interrogation", comment: "Intelligence Entity Type")
                
            case .jamming:
                String(localized: "Jamming", comment: "Intelligence Entity Type")
                
            case .jointIntelligenceCenter:
                String(localized: "Joint Intelligence Center", comment: "Intelligence Entity Type")
                
            case .militaryIntelligence:
                String(localized: "Military Intelligence", comment: "Intelligence Entity Type")
                
            case .search:
                String(localized: "Search", comment: "Intelligence Entity Type")
                
            case .sensor:
                String(localized: "Sensor", comment: "Intelligence Entity Type")
            }
        }
        
        var subtypes: [AnyEntitySubtype] {
            switch self {
            case .none:
                [.none]
            case .electronicWarfare:
                AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
                + ElectronicWarfareEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            default:
                AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            }
        }
    }
}
