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
                return String(localized: "Department of Defense (DoD)", comment: "Device Domain Entity Type")
                
            case .government:
                return String(localized: "Government", comment: "Device Domain Entity Type")
                
            case .contractor:
                return String(localized: "Contractor", comment: "Device Domain Entity Type")
                
            case .supervisoryControlAndDataAcquisition:
                return String(localized: "Supervisory Control and Data Acquisition (SCADA)", comment: "Device Domain Entity Type")
                
            case .nonGovernment:
                return String(localized: "Non-Government", comment: "Device Domain Entity Type")
            }
        }
    }
}
