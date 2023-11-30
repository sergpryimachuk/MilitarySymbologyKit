//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum MILCOConfidenceLevelSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case confidenceLevel1 = "01"
    case confidenceLevel2 = "02"
    case confidenceLevel3 = "03"
    case confidenceLevel4 = "04"
    case confidenceLevel5 = "05"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module, comment: "MILCO General Entity Subtype")

        case .confidenceLevel1:
            String(localized: "MILCO - Confidence-Level 1", bundle: .module, comment: "MILCO General Confidence-Leve Entity Subtype")

        case .confidenceLevel2:
            String(localized: "MILCO - Confidence-Level 2", bundle: .module, comment: "MILCO General Confidence-Leve Entity Subtype")

        case .confidenceLevel3:
            String(localized: "MILCO - Confidence-Level 3", bundle: .module, comment: "MILCO General Confidence-Leve Entity Subtype")

        case .confidenceLevel4:
            String(localized: "MILCO - Confidence-Level 4", bundle: .module, comment: "MILCO General Confidence-Leve Entity Subtype")

        case .confidenceLevel5:
            String(localized: "MILCO - Confidence-Level 5", bundle: .module, comment: "MILCO General Confidence-Leve Entity Subtype")
        }
    }
}
