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
            String(localized: "Reconnaissance and Surveillance", bundle: .module, comment: "Reconnaissance/Cavalry/Scout Entity Subtype")

        case .marine:
            String(localized: "Marine", bundle: .module, comment: "Reconnaissance/Cavalry/Scout Entity Subtype")

        case .motorized:
            String(localized: "Motorized", bundle: .module, comment: "Reconnaissance/Cavalry/Scout Entity Subtype")
        }
    }
}
