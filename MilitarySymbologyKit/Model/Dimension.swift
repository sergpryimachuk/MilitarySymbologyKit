//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//  

import Foundation

enum Dimension: String, CaseIterable, Identifiable {
    case air = "01"
    case airMissile = "02"
    case space = "05"
    case spaceMissile = "06"
    case landUnits = "10"
    case landCivilian = "11"
    case landEquipment = "15"
    case landInstallation = "20"
    case controlMeasure = "25"
    case seaSurface = "30"
    case seaSubsurface = "35"
    case mineWarfare = "36"
    case activities = "40"
    case meteorologicalAtmospheric = "45"
    case meteorologicalOceanographic = "46"
    case meteorologicalSpace = "47"
    case signalsIntelligenceSpace = "50"
    case signalsIntelligenceAir = "51"
    case signalsIntelligenceLand = "52"
    case signalsIntelligenceSurface = "53"
    case signalsIntelligenceSubsurface = "54"
    case cyberspace = "60"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .air:
            String(localized: "Air", comment: "Dimension")
            
        case .airMissile:
            String(localized: "Air Missile", comment: "Dimension")
            
        case .space:
            String(localized: "Space", comment: "Dimension")
            
        case .spaceMissile:
            String(localized: "Space Missile", comment: "Dimension")
            
        case .landUnits:
            String(localized: "Land Units", comment: "Dimension")
            
        case .landCivilian:
            String(localized: "Land Civilian", comment: "Dimension")
            
        case .landEquipment:
            String(localized: "Land Equipment", comment: "Dimension")
            
        case .landInstallation:
            String(localized: "Land Installation", comment: "Dimension")
            
        case .controlMeasure:
            String(localized: "Control Measure", comment: "Dimension")
            
        case .seaSurface:
            String(localized: "Sea Surface", comment: "Dimension")
            
        case .seaSubsurface:
            String(localized: "Sea Subsurface", comment: "Dimension")
            
        case .mineWarfare:
            String(localized: "Mine Warfare", comment: "Dimension")
            
        case .activities:
            String(localized: "Activities", comment: "Dimension")
            
        case .meteorologicalAtmospheric:
            String(localized: "Meteorological - Atmospheric", comment: "Dimension")
            
        case .meteorologicalOceanographic:
            String(localized: "Meteorological - Oceanographic", comment: "Dimension")
            
        case .meteorologicalSpace:
            String(localized: "Meteorological - Space", comment: "Dimension")
            
        case .signalsIntelligenceSpace:
            String(localized: "Signals Intelligence - Space", comment: "Dimension")
            
        case .signalsIntelligenceAir:
            String(localized: "Signals Intelligence - Air", comment: "Dimension")
            
        case .signalsIntelligenceLand:
            String(localized: "Signals Intelligence - Land", comment: "Dimension")
            
        case .signalsIntelligenceSurface:
            String(localized: "Signals Intelligence - Surface", comment: "Dimension")
            
        case .signalsIntelligenceSubsurface:
            String(localized: "Signals Intelligence - Subsurface", comment: "Dimension")
            
        case .cyberspace:
            String(localized: "Cyberspace", comment: "Dimension")
            
        }
    }
}
