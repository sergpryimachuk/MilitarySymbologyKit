//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//  

import Foundation

enum ReconnaissanceCavalryScoutEntitySubtype: String, CaseIterable, EntitySubtype {
    case reconnaissanceAndSurveillance = "01"
    case marine = "02"
    case motorized = "03"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .reconnaissanceAndSurveillance:
            return String(localized: "Reconnaissance and Surveillance", comment: "Reconnaissance/Cavalry/Scout Entity Subtype")
            
        case .marine:
            return String(localized: "Marine", comment: "Reconnaissance/Cavalry/Scout Entity Subtype")
            
        case .motorized:
            return String(localized: "Motorized", comment: "Reconnaissance/Cavalry/Scout Entity Subtype")
        }
    }
}
