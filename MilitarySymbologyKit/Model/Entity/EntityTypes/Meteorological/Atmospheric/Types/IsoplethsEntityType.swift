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
                String(localized: "None")
                
            case .isobarSurface:
                String(localized: "Isobar - Surface", comment: "Isopleths Entity Type")
                
            case .contourUpperAir:
                String(localized: "Contour - Upper Air", comment: "Isopleths Entity Type")
                
            case .isotherm:
                String(localized: "Isotherm", comment: "Isopleths Entity Type")
                
            case .isotach:
                String(localized: "Isotach", comment: "Isopleths Entity Type")
                
            case .isodrosotherm:
                String(localized: "Isodrosotherm", comment: "Isopleths Entity Type")
                
            case .thickness:
                String(localized: "Thickness", comment: "Isopleths Entity Type")
                
            case .operatorDefinedFreeform:
                String(localized: "Operator-Defined Freeform", comment: "Isopleths Entity Type")
            }
        }
        
        var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}
