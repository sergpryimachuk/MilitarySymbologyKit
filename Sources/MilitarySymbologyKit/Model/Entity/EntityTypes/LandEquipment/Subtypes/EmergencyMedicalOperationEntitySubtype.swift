//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public extension OtherEquipmentEntityType {
    enum EmergencyMedicalOperationEntitySubtype: String, CaseIterable, EntitySubtype {
        case none = "00"
        case medicalEvacuationHelicopter = "01"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None", bundle: .module)

            case .medicalEvacuationHelicopter:
                String(localized: "Medical Evacuation Helicopter", bundle: .module, comment: "Emergency Medical Operation Entity Subtype")
            }
        }
    }
}
