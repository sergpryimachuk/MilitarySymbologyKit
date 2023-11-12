//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

enum FiresEntityType: String, CaseIterable, EntityType {
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
        let localizationValue: String.LocalizationValue = switch self {
        case .none:
            "None"
        case .airDefense:
            "Air Defense"

        case .airLandNavalGunfireLiaison:
            "Air/Land Naval Gunfire Liaison"

        case .fieldArtillery:
            "Field Artillery"

        case .fieldArtilleryObserver:
            "Field Artillery Observer"

        case .jointFireSupport:
            "Joint Fire Support"

        case .meteorological:
            "Meteorological"

        case .missile:
            "Missile"

        case .mortar:
            "Mortar"

        case .survey:
            "Survey"
        }
        
        return String(localized: localizationValue, comment: " Fires Entity Type")
    }
}
