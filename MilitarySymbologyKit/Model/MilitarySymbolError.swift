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
