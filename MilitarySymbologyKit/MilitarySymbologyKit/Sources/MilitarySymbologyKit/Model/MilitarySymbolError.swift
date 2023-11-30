//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

public enum MilitarySymbolError: Error {
    case sidcIsNot20
    case contextParcingFailed
    case standardIdentityParcingFailed
    case dimentionParcingFailed
    case statusParcingFailed
    case hqtfdParcingFailed
    case amplifierParcingFailed
    case descriptorParcingFailed
    case entityParcingFailed
    case entityTypeParcingFailed
    case entitySubtypeParcingFailed
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
        case .dimentionParcingFailed:
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
