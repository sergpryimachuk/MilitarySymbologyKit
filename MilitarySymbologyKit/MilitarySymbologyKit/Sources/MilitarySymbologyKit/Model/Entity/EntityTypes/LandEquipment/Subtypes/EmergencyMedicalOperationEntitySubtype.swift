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
                String(localized: "None")
                
            case .medicalEvacuationHelicopter:
                String(localized: "Medical Evacuation Helicopter", bundle: .module, comment: "Emergency Medical Operation Entity Subtype")
            }
        }
    }
}
