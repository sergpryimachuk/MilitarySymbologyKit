//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//  

import Foundation

enum SeaSubsurfaceEntity: String, CaseIterable, Entity {
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
            String(localized: "Military", comment: "Sea Subsurface Entity")
            
        case .civilian:
            String(localized: "Civilian", comment: "Sea Subsurface Entity")
            
        case .weapon:
            String(localized: "Weapon", comment: "Sea Subsurface Entity")
            
        case .echoTrackerClassifier:
            String(localized: "Echo Tracker Classifier (ETC) / Possible Contact (POSCON)", comment: "Sea Subsurface Entity")
            
        case .fusedTrack:
            String(localized: "Fused Track", comment: "Sea Subsurface Entity")
            
        case .manualTrack:
            String(localized: "Manual Track", comment: "Sea Subsurface Entity")
        }
    }
    
    var types: [AnyEntityType] {
        switch self {
        case .military:
            MilitaryEntityType.allCases.map { AnyEntityType($0) }
        case .civilian:
            CivilianEntityType.allCases.map { AnyEntityType($0) }
        case .weapon:
            WeaponEntityType.allCases.map { AnyEntityType($0) }
        case .echoTrackerClassifier:
            [.none]
        case .fusedTrack:
            [.none]
        case .manualTrack:
            [.none]
        }
    }
}
