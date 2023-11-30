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
            String(localized: "None")
        case .emergencyCollectionEvacuationPoint:
            String(localized: "Emergency Collection Evacuation Point", comment: "Emergency Operation Entity Subtype")
        case .emergencyFoodDistribution:
            String(localized: "Emergency Food Distribution", comment: "Emergency Operation Entity Subtype")
        case .emergencyIncidentCommandCenter:
            String(localized: "Emergency Incident Command Center", comment: "Emergency Operation Entity Subtype")
        case .emergencyOperationsCenter:
            String(localized: "Emergency Operations Center", comment: "Emergency Operation Entity Subtype")
        case .emergencyPublicInformationCenter:
            String(localized: "Emergency Public Information Center", comment: "Emergency Operation Entity Subtype")
        case .emergencyShelter:
            String(localized: "Emergency Shelter", comment: "Emergency Operation Entity Subtype")
        case .emergencyStagingArea:
            String(localized: "Emergency Staging Area", comment: "Emergency Operation Entity Subtype")
        case .emergencyWaterDistributionCenter:
            String(localized: "Emergency Water Distribution Center", comment: "Emergency Operation Entity Subtype")
        }
    }
}
