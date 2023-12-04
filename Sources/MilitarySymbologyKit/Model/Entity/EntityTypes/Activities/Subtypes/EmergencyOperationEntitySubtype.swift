//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//

import Foundation

public enum EmergencyOperationEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case emergencyCollectionEvacuationPoint = "01"
    case emergencyFoodDistribution = "02"
    case emergencyIncidentCommandCenter = "03"
    case emergencyOperationsCenter = "04"
    case emergencyPublicInformationCenter = "05"
    case emergencyShelter = "06"
    case emergencyStagingArea = "07"
    case emergencyWaterDistributionCenter = "08"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)
        case .emergencyCollectionEvacuationPoint:
            String(localized: "Emergency Collection Evacuation Point", bundle: .module, comment: "Emergency Operation Entity Subtype")
        case .emergencyFoodDistribution:
            String(localized: "Emergency Food Distribution", bundle: .module, comment: "Emergency Operation Entity Subtype")
        case .emergencyIncidentCommandCenter:
            String(localized: "Emergency Incident Command Center", bundle: .module, comment: "Emergency Operation Entity Subtype")
        case .emergencyOperationsCenter:
            String(localized: "Emergency Operations Center", bundle: .module, comment: "Emergency Operation Entity Subtype")
        case .emergencyPublicInformationCenter:
            String(localized: "Emergency Public Information Center", bundle: .module, comment: "Emergency Operation Entity Subtype")
        case .emergencyShelter:
            String(localized: "Emergency Shelter", bundle: .module, comment: "Emergency Operation Entity Subtype")
        case .emergencyStagingArea:
            String(localized: "Emergency Staging Area", bundle: .module, comment: "Emergency Operation Entity Subtype")
        case .emergencyWaterDistributionCenter:
            String(localized: "Emergency Water Distribution Center", bundle: .module, comment: "Emergency Operation Entity Subtype")
        }
    }
}
