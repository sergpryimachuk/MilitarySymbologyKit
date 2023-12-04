//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum WithSnowOrMeasurableIceCoverEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case predominatelyIceCovered = "01"
    case compactOrWetSnowLessThanHalf = "02"
    case compactOrWetSnowAtLeastHalf = "03"
    case evenLayerCompactOrWetSnow = "04"
    case unevenLayerCompactOrWetSnow = "05"
    case looseDrySnowLessThanHalf = "06"
    case looseDrySnowAtLeastHalf = "07"
    case evenLayerLooseDrySnow = "08"
    case unevenLayerLooseDrySnow = "09"
    case snowCoveringGroundDeepDrifts = "10"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .predominatelyIceCovered:
            String(localized: "Predominately Ice Covered", bundle: .module, comment: "With Snow or Measurable Ice Cover Entity Subtype")

        case .compactOrWetSnowLessThanHalf:
            String(localized: "Compact or Wet Snow (Less Than One-Half of Ground)", bundle: .module, comment: "With Snow or Measurable Ice Cover Entity Subtype")

        case .compactOrWetSnowAtLeastHalf:
            String(localized: "Compact or Wet Snow (At Least One-Half of Ground)", bundle: .module, comment: "With Snow or Measurable Ice Cover Entity Subtype")

        case .evenLayerCompactOrWetSnow:
            String(localized: "Even Layer of Compact or Wet Snow", bundle: .module, comment: "With Snow or Measurable Ice Cover Entity Subtype")

        case .unevenLayerCompactOrWetSnow:
            String(localized: "Uneven Layer of Compact or Wet Snow", bundle: .module, comment: "With Snow or Measurable Ice Cover Entity Subtype")

        case .looseDrySnowLessThanHalf:
            String(localized: "Loose Dry Snow (Less Than One-Half of Ground)", bundle: .module, comment: "With Snow or Measurable Ice Cover Entity Subtype")

        case .looseDrySnowAtLeastHalf:
            String(localized: "Loose Dry Snow (At Least One-Half of Ground)", bundle: .module, comment: "With Snow or Measurable Ice Cover Entity Subtype")

        case .evenLayerLooseDrySnow:
            String(localized: "Even Layer of Loose Dry Snow", bundle: .module, comment: "With Snow or Measurable Ice Cover Entity Subtype")

        case .unevenLayerLooseDrySnow:
            String(localized: "Uneven Layer of Loose Dry Snow", bundle: .module, comment: "With Snow or Measurable Ice Cover Entity Subtype")

        case .snowCoveringGroundDeepDrifts:
            String(localized: "Snow Covering Ground Completely - Deep Drifts", bundle: .module, comment: "With Snow or Measurable Ice Cover Entity Subtype")
        }
    }
}
