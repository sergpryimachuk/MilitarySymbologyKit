//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum FrontalSystemsEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case coldFront = "01"
    case upperColdFront = "02"
    case coldFrontogenesis = "03"
    case coldFrontolysis = "04"
    case warmFront = "05"
    case upperWarmFront = "06"
    case warmFrontogenesis = "07"
    case warmFrontolysis = "08"
    case occludedFront = "09"
    case upperOccludedFront = "10"
    case occludedFrontolysis = "11"
    case stationaryFront = "12"
    case upperStationaryFront = "13"
    case stationaryFrontogenesis = "14"
    case stationaryFrontolysis = "15"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .coldFront:
            return String(localized: "Cold Front", comment: "Frontal Systems Entity Subtype")
            
        case .upperColdFront:
            return String(localized: "Upper Cold Front", comment: "Frontal Systems Entity Subtype")
            
        case .coldFrontogenesis:
            return String(localized: "Cold Frontogenesis", comment: "Frontal Systems Entity Subtype")
            
        case .coldFrontolysis:
            return String(localized: "Cold Frontolysis", comment: "Frontal Systems Entity Subtype")
            
        case .warmFront:
            return String(localized: "Warm Front", comment: "Frontal Systems Entity Subtype")
            
        case .upperWarmFront:
            return String(localized: "Upper Warm Front", comment: "Frontal Systems Entity Subtype")
            
        case .warmFrontogenesis:
            return String(localized: "Warm Frontogenesis", comment: "Frontal Systems Entity Subtype")
            
        case .warmFrontolysis:
            return String(localized: "Warm Frontolysis", comment: "Frontal Systems Entity Subtype")
            
        case .occludedFront:
            return String(localized: "Occluded Front", comment: "Frontal Systems Entity Subtype")
            
        case .upperOccludedFront:
            return String(localized: "Upper Occluded Front", comment: "Frontal Systems Entity Subtype")
            
        case .occludedFrontolysis:
            return String(localized: "Occluded Frontolysis", comment: "Frontal Systems Entity Subtype")
            
        case .stationaryFront:
            return String(localized: "Stationary Front", comment: "Frontal Systems Entity Subtype")
            
        case .upperStationaryFront:
            return String(localized: "Upper Stationary Front", comment: "Frontal Systems Entity Subtype")
            
        case .stationaryFrontogenesis:
            return String(localized: "Stationary Frontogenesis", comment: "Frontal Systems Entity Subtype")
            
        case .stationaryFrontolysis:
            return String(localized: "Stationary Frontolysis", comment: "Frontal Systems Entity Subtype")
        }
    }
}
