//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum PressureTendencyEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case riseThenFallHigher = "01"
    case riseThenSteady = "02"
    case rise = "03"
    case riseThenRiseHigher = "04"
    case steady = "05"
    case fallThenRiseLower = "06"
    case fallThenSteady = "07"
    case fall = "08"
    case riseThenFallLower = "09"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .riseThenFallHigher:
            String(localized: "Rise Then Fall Higher", bundle: .module, comment: "Pressure Tendency Entity Subtype")

        case .riseThenSteady:
            String(localized: "Rise Then Steady", bundle: .module, comment: "Pressure Tendency Entity Subtype")

        case .rise:
            String(localized: "Rise", bundle: .module, comment: "Pressure Tendency Entity Subtype")

        case .riseThenRiseHigher:
            String(localized: "Rise Then Rise Higher", bundle: .module, comment: "Pressure Tendency Entity Subtype")

        case .steady:
            String(localized: "Steady", bundle: .module, comment: "Pressure Tendency Entity Subtype")

        case .fallThenRiseLower:
            String(localized: "Fall Then Rise Lower", bundle: .module, comment: "Pressure Tendency Entity Subtype")

        case .fallThenSteady:
            String(localized: "Fall Then Steady", bundle: .module, comment: "Pressure Tendency Entity Subtype")

        case .fall:
            String(localized: "Fall", bundle: .module, comment: "Pressure Tendency Entity Subtype")

        case .riseThenFallLower:
            String(localized: "Rise Then Fall Lower", bundle: .module, comment: "Pressure Tendency Entity Subtype")
        }
    }
}
