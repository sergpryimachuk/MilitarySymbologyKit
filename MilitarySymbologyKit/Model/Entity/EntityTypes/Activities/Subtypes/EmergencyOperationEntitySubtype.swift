//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//  

import Foundation

enum EmergencyOperationEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case emergencyCollectionEvacuationPoint = "01"
    case emergencyFoodDistribution = "02"
    case emergencyIncidentCommandCenter = "03"
    case emergencyOperationsCenter = "04"
    case emergencyPublicInformationCenter = "05"
    case emergencyShelter = "06"
    case emergencyStagingArea = "07"
    case emergencyWaterDistributionCenter = "08"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
        case .emergencyCollectionEvacuationPoint:
            return String(localized: "Emergency Collection Evacuation Point", comment: "Emergency Operation Entity Subtype")
        case .emergencyFoodDistribution:
            return String(localized: "Emergency Food Distribution", comment: "Emergency Operation Entity Subtype")
        case .emergencyIncidentCommandCenter:
            return String(localized: "Emergency Incident Command Center", comment: "Emergency Operation Entity Subtype")
        case .emergencyOperationsCenter:
            return String(localized: "Emergency Operations Center", comment: "Emergency Operation Entity Subtype")
        case .emergencyPublicInformationCenter:
            return String(localized: "Emergency Public Information Center", comment: "Emergency Operation Entity Subtype")
        case .emergencyShelter:
            return String(localized: "Emergency Shelter", comment: "Emergency Operation Entity Subtype")
        case .emergencyStagingArea:
            return String(localized: "Emergency Staging Area", comment: "Emergency Operation Entity Subtype")
        case .emergencyWaterDistributionCenter:
            return String(localized: "Emergency Water Distribution Center", comment: "Emergency Operation Entity Subtype")
        }
    }
}
