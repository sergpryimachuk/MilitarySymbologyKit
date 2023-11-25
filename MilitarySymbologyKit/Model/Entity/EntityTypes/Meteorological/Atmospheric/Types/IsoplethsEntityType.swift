//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//  

import Foundation

extension AtmosphericEntity {
    enum IsoplethsEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case isobarSurface = "01"
        case contourUpperAir = "02"
        case isotherm = "03"
        case isotach = "04"
        case isodrosotherm = "05"
        case thickness = "06"
        case operatorDefinedFreeform = "07"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .none:
                return String(localized: "None")
                
            case .isobarSurface:
                return String(localized: "Isobar - Surface", comment: "Isopleths Entity Type")
                
            case .contourUpperAir:
                return String(localized: "Contour - Upper Air", comment: "Isopleths Entity Type")
                
            case .isotherm:
                return String(localized: "Isotherm", comment: "Isopleths Entity Type")
                
            case .isotach:
                return String(localized: "Isotach", comment: "Isopleths Entity Type")
                
            case .isodrosotherm:
                return String(localized: "Isodrosotherm", comment: "Isopleths Entity Type")
                
            case .thickness:
                return String(localized: "Thickness", comment: "Isopleths Entity Type")
                
            case .operatorDefinedFreeform:
                return String(localized: "Operator-Defined Freeform", comment: "Isopleths Entity Type")
            }
        }
    }

}
