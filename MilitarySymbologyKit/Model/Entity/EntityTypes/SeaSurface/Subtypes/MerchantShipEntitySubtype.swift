//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum MerchantShipEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case cargoGeneral = "01"
    case containerShip = "02"
    case dredge = "03"
    case rollOnRollOff = "04"
    case ferry = "05"
    case heavyLift = "06"
    case hovercraft = "07"
    case lashCarrierWithBarges = "08"
    case oilerTanker = "09"
    case passenger = "10"
    case tugOceanGoing = "11"
    case tow = "12"
    case transportShipHazardousMaterial = "13"
    case junkDhow = "14"
    case bargeNotSelfPropelled = "15"
    case hospitalShip = "16"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .cargoGeneral:
            return String(localized: "Cargo, General", comment: "Merchant Ship Entity Subtype")
            
        case .containerShip:
            return String(localized: "Container Ship", comment: "Merchant Ship Entity Subtype")
            
        case .dredge:
            return String(localized: "Dredge", comment: "Merchant Ship Entity Subtype")
            
        case .rollOnRollOff:
            return String(localized: "Roll On/Roll Off", comment: "Merchant Ship Entity Subtype")
            
        case .ferry:
            return String(localized: "Ferry", comment: "Merchant Ship Entity Subtype")
            
        case .heavyLift:
            return String(localized: "Heavy Lift", comment: "Merchant Ship Entity Subtype")
            
        case .hovercraft:
            return String(localized: "Hovercraft", comment: "Merchant Ship Entity Subtype")
            
        case .lashCarrierWithBarges:
            return String(localized: "Lash Carrier (with Barges)", comment: "Merchant Ship Entity Subtype")
            
        case .oilerTanker:
            return String(localized: "Oiler/Tanker", comment: "Merchant Ship Entity Subtype")
            
        case .passenger:
            return String(localized: "Passenger", comment: "Merchant Ship Entity Subtype")
            
        case .tugOceanGoing:
            return String(localized: "Tug, Ocean Going", comment: "Merchant Ship Entity Subtype")
            
        case .tow:
            return String(localized: "Tow", comment: "Merchant Ship Entity Subtype")
            
        case .transportShipHazardousMaterial:
            return String(localized: "Transport Ship, Hazardous Material", comment: "Merchant Ship Entity Subtype")
            
        case .junkDhow:
            return String(localized: "Junk/Dhow", comment: "Merchant Ship Entity Subtype")
            
        case .bargeNotSelfPropelled:
            return String(localized: "Barge, Not Self-Propelled", comment: "Merchant Ship Entity Subtype")
            
        case .hospitalShip:
            return String(localized: "Hospital Ship", comment: "Merchant Ship Entity Subtype")
        }
    }
}
