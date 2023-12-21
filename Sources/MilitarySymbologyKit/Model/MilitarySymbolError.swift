//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum MilitarySymbolError: Error {
    
    public typealias Digits = String
    
    case sidcIsNot20
    case contextParcingFailed(Digits)
    case standardIdentityParcingFailed(Digits)
    case dimensionParcingFailed(Digits)
    case statusParcingFailed(Digits)
    case hqtfdParcingFailed(Digits)
    case amplifierParcingFailed(Digits)
    case descriptorParcingFailed(Digits)
    case entityParcingFailed(Digits)
    case entityTypeParcingFailed(Digits)
    case entitySubtypeParcingFailed(Digits)
}

extension MilitarySymbolError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .sidcIsNot20:
            String(
                localized: "SIDC is not 20 characters.",
                bundle: .module,
                comment: "Military Symbol init from SIDC Error"
            )
        case .contextParcingFailed(let digits):
            String(
                localized: "Wrong symbol context. Wrong digits: \(digits).",
                bundle: .module,
                comment: "Military Symbol init from SIDC Error"
            )
        case .standardIdentityParcingFailed(let digits):
            String(
                localized: "Wrong symbol standard identity. Wrong digits: \(digits).",
                bundle: .module,
                comment: "Military Symbol init from SIDC Error"
            )
        case .dimensionParcingFailed(let digits):
            String(
                localized: "Wrong symbol set. Wrong digits: \(digits).",
                bundle: .module,
                comment: "Military Symbol init from SIDC Error"
            )
        case .statusParcingFailed(let digits):
            String(
                localized: "Wrong symbol status. Wrong digits: \(digits).",
                bundle: .module,
                comment: "Military Symbol init from SIDC Error"
            )
        case .hqtfdParcingFailed(let digits):
            String(
                localized: "Wrong symbol HQTFD. Wrong digits: \(digits).",
                bundle: .module,
                comment: "Military Symbol init from SIDC Error"
            )
        case .amplifierParcingFailed(let digits):
            String(
                localized: "Wrong symbol amplifier. Wrong digits: \(digits)",
                bundle: .module,
                comment: "Military Symbol init from SIDC Error"
            )
        case .descriptorParcingFailed(let digits):
            String(
                localized: "Wrong symbol amplifier descriptor. Wrong digits: \(digits).",
                bundle: .module,
                comment: "Military Symbol init from SIDC Error"
            )
        case .entityParcingFailed(let digits):
            String(
                localized: "Wrong symbol entity. Wrong digits: \(digits).",
                bundle: .module,
                comment: "Military Symbol init from SIDC Error"
            )
        case .entityTypeParcingFailed(let digits):
            String(
                localized: "Wrong symbol entity type. Wrong digits: \(digits).",
                bundle: .module,
                comment: "Military Symbol init from SIDC Error"
            )
        case .entitySubtypeParcingFailed(let digits):
            String(
                localized: "Wrong symbol entity subtype. Wrong digits: \(digits).",
                bundle: .module,
                comment: "Military Symbol init from SIDC Error"
            )
        }
    }
}
