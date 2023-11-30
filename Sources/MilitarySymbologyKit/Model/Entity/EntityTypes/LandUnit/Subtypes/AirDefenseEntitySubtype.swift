//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

public enum AirDefenseEntitySubtype: String, CaseIterable, EntitySubtype {
    case mainGunSystem = "01"
    case missile = "02"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .mainGunSystem:
            String(localized: "Main Gun System", bundle: .module, comment: "Air Defense Entity Subtype")

        case .missile:
            String(localized: "Missile", bundle: .module, comment: "Air Defense Entity Subtype")
        }
    }
}
