//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

extension CyberspaceEntity {
    enum DeviceTypeEntityType: String, CaseIterable, Identifiable, EntityType {
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

        var id: String { rawValue }

        var name: String {
            switch self {
            case .coreRouter:
                String(localized: "Core Router", comment: "Device Type Entity Type")

            case .router:
                String(localized: "Router", comment: "Device Type Entity Type")

            case .crossDomainSolution:
                String(localized: "Cross Domain Solution", comment: "Device Type Entity Type")

            case .mailServer:
                String(localized: "Mail Server", comment: "Device Type Entity Type")

            case .webServer:
                String(localized: "Web Server", comment: "Device Type Entity Type")

            case .domainServer:
                String(localized: "Domain Server", comment: "Device Type Entity Type")

            case .fileServer:
                String(localized: "File Server", comment: "Device Type Entity Type")

            case .peerToPeerNode:
                String(localized: "Peer-to-Peer Node", comment: "Device Type Entity Type")

            case .firewall:
                String(localized: "Firewall", comment: "Device Type Entity Type")

            case .switchDevice:
                String(localized: "Switch", comment: "Device Type Entity Type")

            case .host:
                String(localized: "Host", comment: "Device Type Entity Type")

            case .virtualPrivateNetwork:
                String(localized: "Virtual Private Network (VPN)", comment: "Device Type Entity Type")
            }
        }

        var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}
