//
//  SustainmentAreasEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum SustainmentAreasEntityType: String, CaseIterable, Identifiable {
    case detaineeHoldingArea = "01"
    case enemyPrisonerOfWarHoldingArea = "02"
    case forwardArmingAndRefuelingPoint = "03"
    case refugeeHoldingArea = "04"
    case regimentalSupportArea = "05"
    case brigadeSupportArea = "06"
    case divisionSupportArea = "07"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .detaineeHoldingArea:
            return String(localized: "Detainee Holding Area", comment: "Sustainment Areas Entity Type")
        case .enemyPrisonerOfWarHoldingArea:
            return String(localized: "Enemy Prisoner of War Holding Area", comment: "Sustainment Areas Entity Type")
        case .forwardArmingAndRefuelingPoint:
            return String(localized: "Forward Arming and Refueling Point", comment: "Sustainment Areas Entity Type")
        case .refugeeHoldingArea:
            return String(localized: "Refugee Holding Area", comment: "Sustainment Areas Entity Type")
        case .regimentalSupportArea:
            return String(localized: "Regimental Support Area", comment: "Sustainment Areas Entity Type")
        case .brigadeSupportArea:
            return String(localized: "Brigade Support Area", comment: "Sustainment Areas Entity Type")
        case .divisionSupportArea:
            return String(localized: "Division Support Area", comment: "Sustainment Areas Entity Type")
        }
    }
}
