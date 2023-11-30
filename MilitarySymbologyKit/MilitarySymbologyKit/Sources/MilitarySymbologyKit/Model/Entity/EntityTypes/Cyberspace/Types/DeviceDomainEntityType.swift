//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

extension CyberspaceEntity {
    enum DeviceDomainEntityType: String, CaseIterable, Identifiable, EntityType {
        case departmentOfDefense = "01"
        case government = "02"
        case contractor = "03"
        case supervisoryControlAndDataAcquisition = "04"
        case nonGovernment = "05"

        var id: String { rawValue }

        var name: String {
            switch self {
            case .departmentOfDefense:
                String(localized: "Department of Defense (DoD)", bundle: .module, comment: "Device Domain Entity Type")

            case .government:
                String(localized: "Government", bundle: .module, comment: "Device Domain Entity Type")

            case .contractor:
                String(localized: "Contractor", bundle: .module, comment: "Device Domain Entity Type")

            case .supervisoryControlAndDataAcquisition:
                String(localized: "Supervisory Control and Data Acquisition (SCADA)", bundle: .module, comment: "Device Domain Entity Type")

            case .nonGovernment:
                String(localized: "Non-Government", bundle: .module, comment: "Device Domain Entity Type")
            }
        }

        var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}
