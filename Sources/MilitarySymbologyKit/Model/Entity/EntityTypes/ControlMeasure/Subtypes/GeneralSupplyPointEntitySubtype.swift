//
//  Created with ♥ by Serhii Pryimachuk on 21.12.2023.
//

import Foundation

public enum GeneralSupplyPointEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case natoClassISupplyPoint = "01"
    case natoClassIISupplyPoint = "02"
    case natoClassIIISupplyPoint = "03"
    case natoClassIVSupplyPoint = "04"
    case natoClassVSupplyPoint = "05"
    case natoMultipleClassSupplyPoint = "06"
    case usClassISupplyPoint = "07"
    case usClassIISupplyPoint = "08"
    case usClassIIISupplyPoint = "09"
    case usClassIVSupplyPoint = "10"
    case usClassVSupplyPoint = "11"
    case usClassVISupplyPoint = "12"
    case usClassVIISupplyPoint = "13"
    case usClassVIIISupplyPoint = "14"
    case usClassIXSupplyPoint = "15"
    case usClassXSupplyPoint = "16"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            return String(localized: "None", bundle: .module, comment: "General Supply Point Entity Subtype")
        case .natoClassISupplyPoint:
            return String(localized: "NATO Class I Supply Point", bundle: .module, comment: "General Supply Point Entity Subtype")
        case .natoClassIISupplyPoint:
            return String(localized: "NATO Class II Supply Point", bundle: .module, comment: "General Supply Point Entity Subtype")
        case .natoClassIIISupplyPoint:
            return String(localized: "NATO Class III Supply Point", bundle: .module, comment: "General Supply Point Entity Subtype")
        case .natoClassIVSupplyPoint:
            return String(localized: "NATO Class IV Supply Point", bundle: .module, comment: "General Supply Point Entity Subtype")
        case .natoClassVSupplyPoint:
            return String(localized: "NATO Class V Supply Point", bundle: .module, comment: "General Supply Point Entity Subtype")
        case .natoMultipleClassSupplyPoint:
            return String(localized: "NATO Multiple Class Supply Point", bundle: .module, comment: "General Supply Point Entity Subtype")
        case .usClassISupplyPoint:
            return String(localized: "US Class I Supply Point", bundle: .module, comment: "General Supply Point Entity Subtype")
        case .usClassIISupplyPoint:
            return String(localized: "US Class II Supply Point", bundle: .module, comment: "General Supply Point Entity Subtype")
        case .usClassIIISupplyPoint:
            return String(localized: "US Class III Supply Point", bundle: .module, comment: "General Supply Point Entity Subtype")
        case .usClassIVSupplyPoint:
            return String(localized: "US Class IV Supply Point", bundle: .module, comment: "General Supply Point Entity Subtype")
        case .usClassVSupplyPoint:
            return String(localized: "US Class V Supply Point", bundle: .module, comment: "General Supply Point Entity Subtype")
        case .usClassVISupplyPoint:
            return String(localized: "US Class VI Supply Point", bundle: .module, comment: "General Supply Point Entity Subtype")
        case .usClassVIISupplyPoint:
            return String(localized: "US Class VII Supply Point", bundle: .module, comment: "General Supply Point Entity Subtype")
        case .usClassVIIISupplyPoint:
            return String(localized: "US Class VIII Supply Point", bundle: .module, comment: "General Supply Point Entity Subtype")
        case .usClassIXSupplyPoint:
            return String(localized: "US Class IX Supply Point", bundle: .module, comment: "General Supply Point Entity Subtype")
        case .usClassXSupplyPoint:
            return String(localized: "US Class X Supply Point", bundle: .module, comment: "General Supply Point Entity Subtype")
        }
    }
}
