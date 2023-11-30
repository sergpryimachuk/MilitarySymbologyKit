//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

extension OtherEquipmentEntityType {
    enum EmergencyMedicalOperationEntitySubtype: String, CaseIterable, EntitySubtype {
        case none = "00"
        case medicalEvacuationHelicopter = "01"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .none:
                return String(localized: "None")
                
            case .medicalEvacuationHelicopter:
                return String(localized: "Medical Evacuation Helicopter", comment: "Emergency Medical Operation Entity Subtype")
            }
        }
    }
}
