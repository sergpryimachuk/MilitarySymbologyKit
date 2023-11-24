//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//  

import Foundation

enum SeaSubsurfaceEntity: String, CaseIterable, Identifiable {
    case military = "11"
    case civilian = "12"
    case weapon = "13"
    case echoTrackerClassifier = "14"
    case fusedTrack = "15"
    case manualTrack = "16"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .military:
            return String(localized: "Military", comment: "Sea Subsurface Entity")
            
        case .civilian:
            return String(localized: "Civilian", comment: "Sea Subsurface Entity")
            
        case .weapon:
            return String(localized: "Weapon", comment: "Sea Subsurface Entity")
            
        case .echoTrackerClassifier:
            return String(localized: "Echo Tracker Classifier (ETC) / Possible Contact (POSCON)", comment: "Sea Subsurface Entity")
            
        case .fusedTrack:
            return String(localized: "Fused Track", comment: "Sea Subsurface Entity")
            
        case .manualTrack:
            return String(localized: "Manual Track", comment: "Sea Subsurface Entity")
        }
    }
}

