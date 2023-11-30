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
            String(localized: "None")
            
        case .coldFront:
            String(localized: "Cold Front", comment: "Frontal Systems Entity Subtype")
            
        case .upperColdFront:
            String(localized: "Upper Cold Front", comment: "Frontal Systems Entity Subtype")
            
        case .coldFrontogenesis:
            String(localized: "Cold Frontogenesis", comment: "Frontal Systems Entity Subtype")
            
        case .coldFrontolysis:
            String(localized: "Cold Frontolysis", comment: "Frontal Systems Entity Subtype")
            
        case .warmFront:
            String(localized: "Warm Front", comment: "Frontal Systems Entity Subtype")
            
        case .upperWarmFront:
            String(localized: "Upper Warm Front", comment: "Frontal Systems Entity Subtype")
            
        case .warmFrontogenesis:
            String(localized: "Warm Frontogenesis", comment: "Frontal Systems Entity Subtype")
            
        case .warmFrontolysis:
            String(localized: "Warm Frontolysis", comment: "Frontal Systems Entity Subtype")
            
        case .occludedFront:
            String(localized: "Occluded Front", comment: "Frontal Systems Entity Subtype")
            
        case .upperOccludedFront:
            String(localized: "Upper Occluded Front", comment: "Frontal Systems Entity Subtype")
            
        case .occludedFrontolysis:
            String(localized: "Occluded Frontolysis", comment: "Frontal Systems Entity Subtype")
            
        case .stationaryFront:
            String(localized: "Stationary Front", comment: "Frontal Systems Entity Subtype")
            
        case .upperStationaryFront:
            String(localized: "Upper Stationary Front", comment: "Frontal Systems Entity Subtype")
            
        case .stationaryFrontogenesis:
            String(localized: "Stationary Frontogenesis", comment: "Frontal Systems Entity Subtype")
            
        case .stationaryFrontolysis:
            String(localized: "Stationary Frontolysis", comment: "Frontal Systems Entity Subtype")
        }
    }
}
