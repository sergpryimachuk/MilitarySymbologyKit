//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//  

import Foundation

enum SignalEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case radio = "01"
    case radioRelay = "02"
    case teletype = "03"
    case tacticalSatellite = "04"
    case videoImageryCombatCamera = "05"
    case headquartersElement = "95"
    case divisionAndBelowSupport = "96"
    case corpsSupport = "97"
    case theaterEchelonsAboveCorpsSupport = "98"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None", comment: "Signal Entity Subtype")
            
        case .radio:
            return String(localized: "Radio", comment: "Signal Entity Subtype")
            
        case .radioRelay:
            return String(localized: "Radio Relay", comment: "Signal Entity Subtype")
            
        case .teletype:
            return String(localized: "Teletype", comment: "Signal Entity Subtype")
            
        case .tacticalSatellite:
            return String(localized: "Tactical Satellite", comment: "Signal Entity Subtype")
            
        case .videoImageryCombatCamera:
            return String(localized: "Video Imagery (Combat Camera)", comment: "Signal Entity Subtype")
            
        case .headquartersElement:
            return String(localized: "Headquarters Element", comment: "Signal Entity Subtype")
            
        case .divisionAndBelowSupport:
            return String(localized: "Division and Below Support", comment: "Signal Entity Subtype")
            
        case .corpsSupport:
            return String(localized: "Corps Support", comment: "Signal Entity Subtype")
            
        case .theaterEchelonsAboveCorpsSupport:
            return String(localized: "Theater/Echelons Above Corps Support", comment: "Signal Entity Subtype")
        }
    }
}
