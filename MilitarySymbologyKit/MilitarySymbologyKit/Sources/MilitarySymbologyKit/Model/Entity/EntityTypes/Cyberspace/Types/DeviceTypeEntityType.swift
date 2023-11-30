//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

public extension CyberspaceEntity {
    public enum DeviceTypeEntityType: String, CaseIterable, Identifiable, EntityType {
        case coreRouter = "01"
        case router = "02"
        case crossDomainSolution = "03"
        case mailServer = "04"
        case webServer = "05"
        case domainServer = "06"
        case fileServer = "07"
        case peerToPeerNode = "08"
        case firewall = "09"
        case switchDevice = "10"
        case host = "11"
        case virtualPrivateNetwork = "12"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .coreRouter:
                String(localized: "Core Router", bundle: .module, comment: "Device Type Entity Type")

            case .router:
                String(localized: "Router", bundle: .module, comment: "Device Type Entity Type")

            case .crossDomainSolution:
                String(localized: "Cross Domain Solution", bundle: .module, comment: "Device Type Entity Type")

            case .mailServer:
                String(localized: "Mail Server", bundle: .module, comment: "Device Type Entity Type")

            case .webServer:
                String(localized: "Web Server", bundle: .module, comment: "Device Type Entity Type")

            case .domainServer:
                String(localized: "Domain Server", bundle: .module, comment: "Device Type Entity Type")

            case .fileServer:
                String(localized: "File Server", bundle: .module, comment: "Device Type Entity Type")

            case .peerToPeerNode:
                String(localized: "Peer-to-Peer Node", bundle: .module, comment: "Device Type Entity Type")

            case .firewall:
                String(localized: "Firewall", bundle: .module, comment: "Device Type Entity Type")

            case .switchDevice:
                String(localized: "Switch", bundle: .module, comment: "Device Type Entity Type")

            case .host:
                String(localized: "Host", bundle: .module, comment: "Device Type Entity Type")

            case .virtualPrivateNetwork:
                String(localized: "Virtual Private Network (VPN)", bundle: .module, comment: "Device Type Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}
