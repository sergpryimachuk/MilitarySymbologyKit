//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

extension CyberspaceEntity {
    enum EffectEntityType: String, CaseIterable, Identifiable, EntityType {
        case infection = "01"
        case degradation = "02"
        case dataSpoofing = "03"
        case dataManipulation = "04"
        case exfiltration = "05"
        case powerOutage = "06"
        case networkOutage = "07"
        case serviceOutage = "08"
        case deviceOutage = "09"

        var id: String { rawValue }

        var name: String {
            switch self {
            case .infection:
                String(localized: "Infection", comment: "Effect Entity Type")

            case .degradation:
                String(localized: "Degradation", comment: "Effect Entity Type")

            case .dataSpoofing:
                String(localized: "Data Spoofing", comment: "Effect Entity Type")

            case .dataManipulation:
                String(localized: "Data Manipulation", comment: "Effect Entity Type")

            case .exfiltration:
                String(localized: "Exfiltration", comment: "Effect Entity Type")

            case .powerOutage:
                String(localized: "Power Outage", comment: "Effect Entity Type")

            case .networkOutage:
                String(localized: "Network Outage", comment: "Effect Entity Type")

            case .serviceOutage:
                String(localized: "Service Outage", comment: "Effect Entity Type")

            case .deviceOutage:
                String(localized: "Device Outage", comment: "Effect Entity Type")
            }
        }
    }
}
