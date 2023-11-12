//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

enum Entity: String, CaseIterable, Identifiable {
    case commandAndControl = "11"
    case movementAndManeuver = "12"
    case fires = "13"
    case protection = "14"
    case intelligence = "15"
    case sustainment = "16"
    case naval = "17"
    case namedHeadquarters = "18"
    case emergencyOperation = "19"
    case lawEnforcement = "20"
    
    var id: String { rawValue }
    
    var name: String {
        var localizationValue: String.LocalizationValue {
            switch self {
            case .commandAndControl:
                "Command and Control"
                
            case .movementAndManeuver:
                "Movement and Maneuver"
                
            case .fires:
                "Fires"
                
            case .protection:
                "Protection"
                
            case .intelligence:
                "Intelligence"
                
            case .sustainment:
                "Sustainment"
                
            case .naval:
                "Naval"
                
            case .namedHeadquarters:
                "Named Headquarters"
                
            case .emergencyOperation:
                "Emergency Operation"
                
            case .lawEnforcement:
                "Law Enforcement"
                
            }
        }
        
        return String(localized: localizationValue, comment: "Military symbol Entity")
    }
}
