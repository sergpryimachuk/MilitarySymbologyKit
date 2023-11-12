//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//  

import Foundation

enum EquipmentMobilityWaterDescriptor: String, CaseIterable, Identifiable, Descriptor {
    case barge = "1"
    case amphibious = "2"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .barge:
            String(localized: "Barge", comment: "Equipment mobility on water amplifier descriptor")
            
        case .amphibious:
            String(localized: "Amphibious", comment: "Equipment mobility on water amplifier descriptor")
        }
    }
}
