//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

enum CyberspaceEntity: String, CaseIterable, Identifiable, Entity {
    case botnet = "11"
    case infection = "12"
    case healthAndStatus = "13"
    case deviceType = "14"
    case deviceDomain = "15"
    case effect = "16"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .botnet:
            String(localized: "Botnet", comment: "Cyberspace Entity Type")

        case .infection:
            String(localized: "Infection", comment: "Cyberspace Entity Type")

        case .healthAndStatus:
            String(localized: "Health and Status", comment: "Cyberspace Entity Type")

        case .deviceType:
            String(localized: "Device Type", comment: "Cyberspace Entity Type")

        case .deviceDomain:
            String(localized: "Device Domain", comment: "Cyberspace Entity Type")

        case .effect:
            String(localized: "Effect", comment: "Cyberspace Entity Type")
        }
    }

    var types: [AnyEntityType] {
        switch self {
        case .botnet:
            BotnetEntityType.allCases.map { AnyEntityType($0) }
        case .infection:
            InfectionEntityType.allCases.map { AnyEntityType($0) }
        case .healthAndStatus:
            HealthAndStatusEntityType.allCases.map { AnyEntityType($0) }
        case .deviceType:
            DeviceTypeEntityType.allCases.map { AnyEntityType($0) }
        case .deviceDomain:
            DeviceDomainEntityType.allCases.map { AnyEntityType($0) }
        case .effect:
            EffectEntityType.allCases.map { AnyEntityType($0) }
        }
    }
}
