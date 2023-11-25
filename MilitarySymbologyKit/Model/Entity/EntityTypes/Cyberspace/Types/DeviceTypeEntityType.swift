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
                return String(localized: "Core Router", comment: "Device Type Entity Type")
                
            case .router:
                return String(localized: "Router", comment: "Device Type Entity Type")
                
            case .crossDomainSolution:
                return String(localized: "Cross Domain Solution", comment: "Device Type Entity Type")
                
            case .mailServer:
                return String(localized: "Mail Server", comment: "Device Type Entity Type")
                
            case .webServer:
                return String(localized: "Web Server", comment: "Device Type Entity Type")
                
            case .domainServer:
                return String(localized: "Domain Server", comment: "Device Type Entity Type")
                
            case .fileServer:
                return String(localized: "File Server", comment: "Device Type Entity Type")
                
            case .peerToPeerNode:
                return String(localized: "Peer-to-Peer Node", comment: "Device Type Entity Type")
                
            case .firewall:
                return String(localized: "Firewall", comment: "Device Type Entity Type")
                
            case .switchDevice:
                return String(localized: "Switch", comment: "Device Type Entity Type")
                
            case .host:
                return String(localized: "Host", comment: "Device Type Entity Type")
                
            case .virtualPrivateNetwork:
                return String(localized: "Virtual Private Network (VPN)", comment: "Device Type Entity Type")
            }
        }
    }
}
