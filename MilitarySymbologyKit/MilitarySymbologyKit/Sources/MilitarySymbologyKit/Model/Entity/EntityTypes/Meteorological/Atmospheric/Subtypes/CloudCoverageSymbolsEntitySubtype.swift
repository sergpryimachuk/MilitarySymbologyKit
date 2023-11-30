//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

enum CloudCoverageSymbolsEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case clearSky = "01"
    case fewCoverage = "02"
    case scatteredCoverage = "03"
    case brokenCoverage = "04"
    case overcastCoverage = "05"
    case obscuredSky = "06"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            return String(localized: "None")

        case .clearSky:
            return String(localized: "Clear Sky", comment: "Cloud Coverage Symbols Entity Subtype")

        case .fewCoverage:
            return String(localized: "Few Coverage", comment: "Cloud Coverage Symbols Entity Subtype")

        case .scatteredCoverage:
            return String(localized: "Scattered Coverage", comment: "Cloud Coverage Symbols Entity Subtype")

        case .brokenCoverage:
            return String(localized: "Broken Coverage", comment: "Cloud Coverage Symbols Entity Subtype")

        case .overcastCoverage:
            return String(localized: "Overcast Coverage", comment: "Cloud Coverage Symbols Entity Subtype")

        case .obscuredSky:
            return String(localized: "Sky Totally or Partially Obscured", comment: "Cloud Coverage Symbols Entity Subtype")
        }
    }
}
