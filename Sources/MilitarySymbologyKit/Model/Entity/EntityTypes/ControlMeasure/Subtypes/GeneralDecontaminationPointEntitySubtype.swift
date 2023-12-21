//
//  Created with ♥ by Serhii Pryimachuk on 21.12.2023.
//

import Foundation

public enum GeneralDecontaminationPointEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case abatis = "01"
    case antipersonnelMine = "02"
    case antitankMine = "03"
    case antitankMineWithAntiHandlingDevice = "04"
    case wideAreaAntitankMine = "05"
    case unspecifiedMine = "06"
    case boobyTrap = "07"
    case engineerRegulatingPoint = "08"
    case shelter = "09"
    case shelterAboveGround = "10"
    case belowGroundShelter = "11"
    case fort = "12"
    case chemicalEvent = "13"
    case biologicalEvent = "14"
    case nuclearEvent = "15"
    case nuclearFalloutProducingEvent = "16"
    case radiological = "17"
    case generalDecontaminationPointSite = "18"
    case tetrahedronsDragonsTeethSimilarObstacles = "19"
    case verticalObstructions = "20"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            return String(localized: "None", bundle: .module)
        case .abatis:
            return String(localized: "Abatis", bundle: .module, comment: "General Decontamination Point Entity Subtype")
        case .antipersonnelMine:
            return String(localized: "Antipersonnel Mine", bundle: .module, comment: "General Decontamination Point Entity Subtype")
        case .antitankMine:
            return String(localized: "Antitank Mine", bundle: .module, comment: "General Decontamination Point Entity Subtype")
        case .antitankMineWithAntiHandlingDevice:
            return String(localized: "Antitank Mine with Anti-handling Device", bundle: .module, comment: "General Decontamination Point Entity Subtype")
        case .wideAreaAntitankMine:
            return String(localized: "Wide Area Antitank Mine", bundle: .module, comment: "General Decontamination Point Entity Subtype")
        case .unspecifiedMine:
            return String(localized: "Unspecified Mine", bundle: .module, comment: "General Decontamination Point Entity Subtype")
        case .boobyTrap:
            return String(localized: "Booby Trap", bundle: .module, comment: "General Decontamination Point Entity Subtype")
        case .engineerRegulatingPoint:
            return String(localized: "Engineer Regulating Point", bundle: .module, comment: "General Decontamination Point Entity Subtype")
        case .shelter:
            return String(localized: "Shelter", bundle: .module, comment: "General Decontamination Point Entity Subtype")
        case .shelterAboveGround:
            return String(localized: "Shelter Above Ground", bundle: .module, comment: "General Decontamination Point Entity Subtype")
        case .belowGroundShelter:
            return String(localized: "Below Ground Shelter", bundle: .module, comment: "General Decontamination Point Entity Subtype")
        case .fort:
            return String(localized: "Fort", bundle: .module, comment: "General Decontamination Point Entity Subtype")
        case .chemicalEvent:
            return String(localized: "Chemical Event", bundle: .module, comment: "General Decontamination Point Entity Subtype")
        case .biologicalEvent:
            return String(localized: "Biological Event", bundle: .module, comment: "General Decontamination Point Entity Subtype")
        case .nuclearEvent:
            return String(localized: "Nuclear Event", bundle: .module, comment: "General Decontamination Point Entity Subtype")
        case .nuclearFalloutProducingEvent:
            return String(localized: "Nuclear Fallout Producing Event", bundle: .module, comment: "General Decontamination Point Entity Subtype")
        case .radiological:
            return String(localized: "Radiological", bundle: .module, comment: "General Decontamination Point Entity Subtype")
        case .generalDecontaminationPointSite:
            return String(localized: "General Decontamination Point/Site", bundle: .module, comment: "General Decontamination Point Entity Subtype")
        case .tetrahedronsDragonsTeethSimilarObstacles:
            return String(localized: "Tetrahedrons, Dragons Teeth, and Other Similar Obstacles", bundle: .module, comment: "General Decontamination Point Entity Subtype")
        case .verticalObstructions:
            return String(localized: "Vertical Obstructions", bundle: .module, comment: "General Decontamination Point Entity Subtype")
        }
    }
}
