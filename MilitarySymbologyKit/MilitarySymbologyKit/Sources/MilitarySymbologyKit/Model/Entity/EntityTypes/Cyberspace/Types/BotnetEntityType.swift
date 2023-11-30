//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

public extension CyberspaceEntity {
    public enum BotnetEntityType: String, CaseIterable, Identifiable, EntityType {
        case commandAndControl = "01"
        case herder = "02"
        case callbackDomain = "03"
        case zombie = "04"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .commandAndControl:
                String(localized: "Command and Control (C2)", bundle: .module, comment: "Botnet Entity Type")

            case .herder:
                String(localized: "Herder", bundle: .module, comment: "Botnet Entity Type")

            case .callbackDomain:
                String(localized: "Callback Domain", bundle: .module, comment: "Botnet Entity Type")

            case .zombie:
                String(localized: "Zombie", bundle: .module, comment: "Botnet Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}
