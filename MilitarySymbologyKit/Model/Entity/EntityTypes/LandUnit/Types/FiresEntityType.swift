//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

extension LandUnitEntity {
    enum FiresEntityType: String, CaseIterable, Identifiable, EntityType {
        case none = "00"
        case airDefense = "01"
        case airLandNavalGunfireLiaison = "02"
        case fieldArtillery = "03"
        case fieldArtilleryObserver = "04"
        case jointFireSupport = "05"
        case meteorological = "06"
        case missile = "07"
        case mortar = "08"
        case survey = "09"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .none:
                return String(localized: "None", comment: "Fire Support Entity Type")
                
            case .airDefense:
                return String(localized: "Air Defense", comment: "Fire Support Entity Type")
                
            case .airLandNavalGunfireLiaison:
                return String(localized: "Air-Land-Naval Gunfire Liaison", comment: "Fire Support Entity Type")
                
            case .fieldArtillery:
                return String(localized: "Field Artillery", comment: "Fire Support Entity Type")
                
            case .fieldArtilleryObserver:
                return String(localized: "Field Artillery Observer", comment: "Fire Support Entity Type")
                
            case .jointFireSupport:
                return String(localized: "Joint Fire Support", comment: "Fire Support Entity Type")
                
            case .meteorological:
                return String(localized: "Meteorological", comment: "Fire Support Entity Type")
                
            case .missile:
                return String(localized: "Missile", comment: "Fire Support Entity Type")
                
            case .mortar:
                return String(localized: "Mortar", comment: "Fire Support Entity Type")
                
            case .survey:
                return String(localized: "Survey", comment: "Fire Support Entity Type")
            }
        }
        
        var subtypes: [AnyEntitySubtype] {
            // TODO: Add extra casess...
            AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        }
    }
}
