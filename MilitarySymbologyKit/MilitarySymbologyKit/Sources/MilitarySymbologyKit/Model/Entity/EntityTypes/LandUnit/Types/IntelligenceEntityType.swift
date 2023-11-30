//
//  Created with ♥ by Serhii Pryimachuk on 17.11.2023.
//

import Foundation

public extension LandUnitEntity {
    public enum IntelligenceEntityType: String, CaseIterable, Identifiable, EntityType {
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
        
        public var id: String { rawValue }
        
        public var name: String {
            switch self {
            case .none:
                String(localized: "None")
            case .analysis:
                String(localized: "Analysis", bundle: .module, comment: "Intelligence Entity Type")
                
            case .counterintelligence:
                String(localized: "Counterintelligence", bundle: .module, comment: "Intelligence Entity Type")
                
            case .directionFinding:
                String(localized: "Direction Finding", bundle: .module, comment: "Intelligence Entity Type")
                
            case .electronicRanging:
                String(localized: "Electronic Ranging", bundle: .module, comment: "Intelligence Entity Type")
                
            case .electronicWarfare:
                String(localized: "Electronic Warfare", bundle: .module, comment: "Intelligence Entity Type")
                
            case .interceptSearchAndRecording:
                String(localized: "Intercept (Search and Recording)", bundle: .module, comment: "Intelligence Entity Type")
                
            case .interrogation:
                String(localized: "Interrogation", bundle: .module, comment: "Intelligence Entity Type")
                
            case .jamming:
                String(localized: "Jamming", bundle: .module, comment: "Intelligence Entity Type")
                
            case .jointIntelligenceCenter:
                String(localized: "Joint Intelligence Center", bundle: .module, comment: "Intelligence Entity Type")
                
            case .militaryIntelligence:
                String(localized: "Military Intelligence", bundle: .module, comment: "Intelligence Entity Type")
                
            case .search:
                String(localized: "Search", bundle: .module, comment: "Intelligence Entity Type")
                
            case .sensor:
                String(localized: "Sensor", bundle: .module, comment: "Intelligence Entity Type")
            }
        }
        
        public var subtypes: [AnyEntitySubtype] {
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
