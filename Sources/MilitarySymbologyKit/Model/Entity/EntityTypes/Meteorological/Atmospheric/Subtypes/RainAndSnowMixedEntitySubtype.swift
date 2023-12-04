//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum RainAndSnowMixedEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case light = "01"
    case moderateHeavy = "02"
    case lightShowers = "03"
    case moderateHeavyShowers = "04"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)

        case .light:
            String(localized: "Light", bundle: .module, comment: "Rain and Snow Mixed Entity Subtype")

        case .moderateHeavy:
            String(localized: "Moderate/Heavy", bundle: .module, comment: "Rain and Snow Mixed Entity Subtype")

        case .lightShowers:
            String(localized: "Light Showers", bundle: .module, comment: "Rain and Snow Mixed Entity Subtype")

        case .moderateHeavyShowers:
            String(localized: "Moderate/Heavy Showers", bundle: .module, comment: "Rain and Snow Mixed Entity Subtype")
        }
    }
}
