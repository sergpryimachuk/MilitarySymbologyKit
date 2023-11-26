//
//  FireLinesEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum FireLinesEntityType: String, CaseIterable, EntityType {
    case fireSupportCoordinationLine = "01"
    case coordinatedFireLine = "02"
    case noFireLine = "03"
    case battlefieldCoordinationLine = "04"
    case restrictiveFireLine = "05"
    case munitionFlightPath = "06"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .fireSupportCoordinationLine:
            String(localized: "Fire Support Coordination Line (FSCL)", comment: "Fire Lines Entity Type")
        case .coordinatedFireLine:
            String(localized: "Coordinated Fire Line (CFL)", comment: "Fire Lines Entity Type")
        case .noFireLine:
            String(localized: "No Fire Line", comment: "Fire Lines Entity Type")
        case .battlefieldCoordinationLine:
            String(localized: "Battlefield Coordination Line", comment: "Fire Lines Entity Type")
        case .restrictiveFireLine:
            String(localized: "Restrictive Fire Line", comment: "Fire Lines Entity Type")
        case .munitionFlightPath:
            String(localized: "Munition Flight Path", comment: "Fire Lines Entity Type")
        }
    }
}
