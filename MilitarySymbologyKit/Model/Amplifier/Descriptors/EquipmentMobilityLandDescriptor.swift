//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

enum EquipmentMobilityLandDescriptor: String, CaseIterable, Identifiable, Descriptor {
    case wheeledLimitedCrossCountry = "1"
    case wheeledCrossCountry = "2"
    case tracked = "3"
    case wheeledAndTrackedCombination = "4"
    case towed = "5"
    case rail = "6"
    case packAnimals = "7"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .wheeledLimitedCrossCountry:
            String(localized: "Wheeled limited cross country", comment: "Equipment mobility on land amplifier descriptor")
            
        case .wheeledCrossCountry:
            String(localized: "Wheeled cross country", comment: "Equipment mobility on land amplifier descriptor")
            
        case .tracked:
            String(localized: "Tracked", comment: "Equipment mobility on land amplifier descriptor")
            
        case .wheeledAndTrackedCombination:
            String(localized: "Wheeled and tracked combination", comment: "Equipment mobility on land amplifier descriptor")
            
        case .towed:
            String(localized: "Towed", comment: "Equipment mobility on land amplifier descriptor")
            
        case .rail:
            String(localized: "Rail", comment: "Equipment mobility on land amplifier descriptor")
            
        case .packAnimals:
            String(localized: "Pack animals", comment: "Equipment mobility on land amplifier descriptor")
            
        }
    }
}
