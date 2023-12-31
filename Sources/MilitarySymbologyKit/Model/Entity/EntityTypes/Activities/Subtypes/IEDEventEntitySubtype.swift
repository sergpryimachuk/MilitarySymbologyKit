//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//

import Foundation

public enum IEDEventEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case iedExplosion = "01"
    case prematureIEDExplosion = "02"
    case iedCache = "03"
    case iedSuicideBomber = "04"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)

        case .iedExplosion:
            String(localized: "IED Explosion", bundle: .module, comment: "IED Event Entity Subtype")

        case .prematureIEDExplosion:
            String(localized: "Premature IED Explosion", bundle: .module, comment: "IED Event Entity Subtype")

        case .iedCache:
            String(localized: "IED Cache", bundle: .module, comment: "IED Event Entity Subtype")

        case .iedSuicideBomber:
            String(localized: "IED Suicide Bomber", bundle: .module, comment: "IED Event Entity Subtype")
        }
    }
}
