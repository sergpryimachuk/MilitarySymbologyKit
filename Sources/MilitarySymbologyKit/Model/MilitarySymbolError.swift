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
            String(localized: "SIDC is not 20 characters.", bundle: .module, comment: "Military Symbol init from SIDC Error")
        case .contextParcingFailed:
            String(localized: "Wrong symbol context.", bundle: .module, comment: "Military Symbol init from SIDC Error")
        case .standardIdentityParcingFailed:
            String(localized: "Wrong symbol standard identity.", bundle: .module, comment: "Military Symbol init from SIDC Error")
        case .dimensionParcingFailed:
            String(localized: "Wrong symbol set.", bundle: .module, comment: "Military Symbol init from SIDC Error")
        case .statusParcingFailed:
            String(localized: "Wrong symbol status.", bundle: .module, comment: "Military Symbol init from SIDC Error")
        case .hqtfdParcingFailed:
            String(localized: "Wrong symbol HQTFD.", bundle: .module, comment: "Military Symbol init from SIDC Error")
        case .amplifierParcingFailed:
            String(localized: "Wrong symbol amplifier.", bundle: .module, comment: "Military Symbol init from SIDC Error")
        case .descriptorParcingFailed:
            String(localized: "Wrong symbol amplifier descriptor.", bundle: .module, comment: "Military Symbol init from SIDC Error")
        case .entityParcingFailed:
            String(localized: "Wrong symbol entity.", bundle: .module, comment: "Military Symbol init from SIDC Error")
        case .entityTypeParcingFailed:
            String(localized: "Wrong symbol entity type.", bundle: .module, comment: "Military Symbol init from SIDC Error")
        case .entitySubtypeParcingFailed:
            String(localized: "Wrong symbol entity subtype.", bundle: .module, comment: "Military Symbol init from SIDC Error")
        }
    }
}
