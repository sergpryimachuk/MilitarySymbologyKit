//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum MilitarySymbolError: Error {
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
    var errorDescription: String? {
        switch self {
        case .sidcIsNot20:
            String(localized: "SIDC is not 20 characters.", comment: "Military Symbol init from SIDC Error")
        case .contextParcingFailed:
            String(localized: "Wrong symbol context.", comment: "Military Symbol init from SIDC Error")
        case .standardIdentityParcingFailed:
            String(localized: "Wrong symbol standard identity.", comment: "Military Symbol init from SIDC Error")
        case .dimentionParcingFailed:
            String(localized: "Wrong symbol set.", comment: "Military Symbol init from SIDC Error")
        case .statusParcingFailed:
            String(localized: "Wrong symbol status.", comment: "Military Symbol init from SIDC Error")
        case .hqtfdParcingFailed:
            String(localized: "Wrong symbol HQTFD.", comment: "Military Symbol init from SIDC Error")
        case .amplifierParcingFailed:
            String(localized: "Wrong symbol amplifier.", comment: "Military Symbol init from SIDC Error")
        case .descriptorParcingFailed:
            String(localized: "Wrong symbol amplifier descriptor.", comment: "Military Symbol init from SIDC Error")
        case .entityParcingFailed:
            String(localized: "Wrong symbol entity.", comment: "Military Symbol init from SIDC Error")
        case .entityTypeParcingFailed:
            String(localized: "Wrong symbol entity type.", comment: "Military Symbol init from SIDC Error")
        case .entitySubtypeParcingFailed:
            String(localized: "Wrong symbol entity subtype.", comment: "Military Symbol init from SIDC Error")
        }
    }
}
