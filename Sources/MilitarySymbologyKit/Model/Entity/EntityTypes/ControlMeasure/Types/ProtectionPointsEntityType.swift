//
//  Created with ♥ by Serhii Pryimachuk on 21.12.2023.
//

import Foundation

public enum ProtectionPointsEntityType: String, CaseIterable, EntityType {
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
            return String(localized: "Abatis", bundle: .module, comment: "Protection Points Entity Type")
        case .antipersonnelMine:
            return String(localized: "Antipersonnel Mine", bundle: .module, comment: "Protection Points Entity Type")
        case .antitankMine:
            return String(localized: "Antitank Mine", bundle: .module, comment: "Protection Points Entity Type")
        case .antitankMineWithAntiHandlingDevice:
            return String(localized: "Antitank Mine with Anti-handling Device", bundle: .module, comment: "Protection Points Entity Type")
        case .wideAreaAntitankMine:
            return String(localized: "Wide Area Antitank Mine", bundle: .module, comment: "Protection Points Entity Type")
        case .unspecifiedMine:
            return String(localized: "Unspecified Mine", bundle: .module, comment: "Protection Points Entity Type")
        case .boobyTrap:
            return String(localized: "Booby Trap", bundle: .module, comment: "Protection Points Entity Type")
        case .engineerRegulatingPoint:
            return String(localized: "Engineer Regulating Point", bundle: .module, comment: "Protection Points Entity Type")
        case .shelter:
            return String(localized: "Shelter", bundle: .module, comment: "Protection Points Entity Type")
        case .shelterAboveGround:
            return String(localized: "Shelter Above Ground", bundle: .module, comment: "Protection Points Entity Type")
        case .belowGroundShelter:
            return String(localized: "Below Ground Shelter", bundle: .module, comment: "Protection Points Entity Type")
        case .fort:
            return String(localized: "Fort", bundle: .module, comment: "Protection Points Entity Type")
        case .chemicalEvent:
            return String(localized: "Chemical Event", bundle: .module, comment: "Protection Points Entity Type")
        case .biologicalEvent:
            return String(localized: "Biological Event", bundle: .module, comment: "Protection Points Entity Type")
        case .nuclearEvent:
            return String(localized: "Nuclear Event", bundle: .module, comment: "Protection Points Entity Type")
        case .nuclearFalloutProducingEvent:
            return String(localized: "Nuclear Fallout Producing Event", bundle: .module, comment: "Protection Points Entity Type")
        case .radiological:
            return String(localized: "Radiological", bundle: .module, comment: "Protection Points Entity Type")
        case .generalDecontaminationPointSite:
            return String(localized: "General Decontamination Point/Site", bundle: .module, comment: "Protection Points Entity Type")
        case .tetrahedronsDragonsTeethSimilarObstacles:
            return String(localized: "Tetrahedrons, Dragons Teeth, and Other Similar Obstacles", bundle: .module, comment: "Protection Points Entity Type")
        case .verticalObstructions:
            return String(localized: "Vertical Obstructions", bundle: .module, comment: "Protection Points Entity Type")
        }
    }

    public var subtypes: [AnyEntitySubtype] {
        switch self {
        case .antipersonnelMine:
            AntipersonnelMineEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .chemicalEvent, .biologicalEvent, .radiological:
            ChemicalEventEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .generalDecontaminationPointSite:
            GeneralDecontaminationPointEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .tetrahedronsDragonsTeethSimilarObstacles:
            TetrahedronsDragonsTeethSimilarObstaclesEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .verticalObstructions:
            VerticalObstructionsEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        default:
            [.none]
        }
    }
}
