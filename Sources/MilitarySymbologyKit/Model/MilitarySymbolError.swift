//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum MilitarySymbolError: Error {
    case sidcIsNot20
    case contextParcingFailed(String)
    case standardIdentityParcingFailed(String)
    case dimensionParcingFailed(String)
    case statusParcingFailed(String)
    case hqtfdParcingFailed(String)
    case amplifierParcingFailed(String)
    case descriptorParcingFailed(amplifierDigits: String, wrongDigits: String)
    case entityParcingFailed(dimensionDigits: String, wrongDigits: String)
    case entityTypeParcingFailed(dimensionDigits: String, entityDigits: String, wrongDigits: String)
    case entitySubtypeParcingFailed(dimensionDigits: String, entityDigits: String, entityTypeDigits: String, wrongDigits: String)
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
        case .descriptorParcingFailed(
            let amplifierDigits, 
            let wrongDigits
        ):
            String(
                localized: "Wrong symbol amplifier descriptor. Amplifier digits: \(amplifierDigits). Wrong digits: \(wrongDigits).",
                bundle: .module,
                comment: "Military Symbol init from SIDC Error"
            )
        case .entityParcingFailed(
            let dimensionDigits,
            let wrongDigits
        ):
            String(
                localized: "Wrong symbol entity. Dimension digits: \(dimensionDigits). Wrong digits: \(wrongDigits).",
                bundle: .module,
                comment: "Military Symbol init from SIDC Error"
            )
        case .entityTypeParcingFailed(
            let dimensionDigits,
            let entityDigits,
            let wrongDigits
        ):
            String(
                localized: "Wrong symbol entity type. Dimension digits: \(dimensionDigits). Entity digits: \(entityDigits). Wrong digits: \(wrongDigits).",
                bundle: .module,
                comment: "Military Symbol init from SIDC Error"
            )
        case .entitySubtypeParcingFailed(
            let dimensionDigits,
            let entityDigits,
            let entityTypeDigits,
            let wrongDigits
        ):
            String(
                localized: "Wrong symbol entity subtype. Dimension digits: \(dimensionDigits). Entity digits: \(entityDigits). EntityType Digits: \(entityTypeDigits). Wrong digits: \(wrongDigits).",
                bundle: .module,
                comment: "Military Symbol init from SIDC Error"
            )
        }
    }
}
