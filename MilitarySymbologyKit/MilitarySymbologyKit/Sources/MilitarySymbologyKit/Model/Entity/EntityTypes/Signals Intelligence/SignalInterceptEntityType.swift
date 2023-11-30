//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

public enum SignalInterceptEntityType: String, CaseIterable, Identifiable, EntityType {
    case communications = "01"
    case jammer = "02"
    case radar = "03"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .communications:
            String(localized: "Communications", bundle: .module, comment: "Signal Intercept Entity Type")

        case .jammer:
            String(localized: "Jammer", bundle: .module, comment: "Signal Intercept Entity Type")

        case .radar:
            String(localized: "Radar", bundle: .module, comment: "Signal Intercept Entity Type")
        }
    }

    public var subtypes: [AnyEntitySubtype] {
        [.none]
    }
}
