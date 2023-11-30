//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

enum AirDefenseEntitySubtype: String, CaseIterable, EntitySubtype {
    case mainGunSystem = "01"
    case missile = "02"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .mainGunSystem:
            String(localized: "Main Gun System", bundle: .module, comment: "Air Defense Entity Subtype")

        case .missile:
            String(localized: "Missile", bundle: .module, comment: "Air Defense Entity Subtype")
        }
    }
}
