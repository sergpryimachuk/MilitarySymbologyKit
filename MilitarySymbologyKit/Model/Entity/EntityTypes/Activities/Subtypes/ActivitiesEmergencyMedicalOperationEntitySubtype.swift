//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//  

import Foundation

extension OperationEntityType {
    enum EmergencyMedicalOperationEntitySubtype: String, CaseIterable, EntitySubtype {
        case none = "00"
        case emtStationLocation = "01"
        case healthDepartmentFacility = "02"
        case medicalFacilitiesOutpatient = "03"
        case morgue = "04"
        case pharmacy = "05"
        case triage = "06"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .none:
                return String(localized: "None")
            case .emtStationLocation:
                return String(localized: "EMT Station Location", comment: "Emergency Medical Operation Entity Subtype")
            case .healthDepartmentFacility:
                return String(localized: "Health Department Facility", comment: "Emergency Medical Operation Entity Subtype")
            case .medicalFacilitiesOutpatient:
                return String(localized: "Medical Facilities Outpatient", comment: "Emergency Medical Operation Entity Subtype")
            case .morgue:
                return String(localized: "Morgue", comment: "Emergency Medical Operation Entity Subtype")
            case .pharmacy:
                return String(localized: "Pharmacy", comment: "Emergency Medical Operation Entity Subtype")
            case .triage:
                return String(localized: "Triage", comment: "Emergency Medical Operation Entity Subtype")
            }
        }
    }
}
