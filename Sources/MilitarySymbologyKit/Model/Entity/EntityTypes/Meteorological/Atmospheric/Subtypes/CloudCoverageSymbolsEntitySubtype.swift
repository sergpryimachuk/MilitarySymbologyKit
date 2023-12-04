//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum CloudCoverageSymbolsEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case clearSky = "01"
    case fewCoverage = "02"
    case scatteredCoverage = "03"
    case brokenCoverage = "04"
    case overcastCoverage = "05"
    case obscuredSky = "06"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .clearSky:
            String(localized: "Clear Sky", bundle: .module, comment: "Cloud Coverage Symbols Entity Subtype")

        case .fewCoverage:
            String(localized: "Few Coverage", bundle: .module, comment: "Cloud Coverage Symbols Entity Subtype")

        case .scatteredCoverage:
            String(localized: "Scattered Coverage", bundle: .module, comment: "Cloud Coverage Symbols Entity Subtype")

        case .brokenCoverage:
            String(localized: "Broken Coverage", bundle: .module, comment: "Cloud Coverage Symbols Entity Subtype")

        case .overcastCoverage:
            String(localized: "Overcast Coverage", bundle: .module, comment: "Cloud Coverage Symbols Entity Subtype")

        case .obscuredSky:
            String(localized: "Sky Totally or Partially Obscured", bundle: .module, comment: "Cloud Coverage Symbols Entity Subtype")
        }
    }
}
