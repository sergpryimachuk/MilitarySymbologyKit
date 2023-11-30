//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

public enum CyberspaceEntity: String, CaseIterable, Identifiable, Entity {
    case botnet = "11"
    case infection = "12"
    case healthAndStatus = "13"
    case deviceType = "14"
    case deviceDomain = "15"
    case effect = "16"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .botnet:
            String(localized: "Botnet", bundle: .module, comment: "Cyberspace Entity Type")

        case .infection:
            String(localized: "Infection", bundle: .module, comment: "Cyberspace Entity Type")

        case .healthAndStatus:
            String(localized: "Health and Status", bundle: .module, comment: "Cyberspace Entity Type")

        case .deviceType:
            String(localized: "Device Type", bundle: .module, comment: "Cyberspace Entity Type")

        case .deviceDomain:
            String(localized: "Device Domain", bundle: .module, comment: "Cyberspace Entity Type")

        case .effect:
            String(localized: "Effect", bundle: .module, comment: "Cyberspace Entity Type")
        }
    }

    public var types: [AnyEntityType] {
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
