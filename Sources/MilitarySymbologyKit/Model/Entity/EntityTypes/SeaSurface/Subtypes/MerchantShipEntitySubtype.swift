//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum MerchantShipEntitySubtype: String, CaseIterable, EntitySubtype {
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

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)

        case .cargoGeneral:
            String(localized: "Cargo, General", bundle: .module, comment: "Merchant Ship Entity Subtype")

        case .containerShip:
            String(localized: "Container Ship", bundle: .module, comment: "Merchant Ship Entity Subtype")

        case .dredge:
            String(localized: "Dredge", bundle: .module, comment: "Merchant Ship Entity Subtype")

        case .rollOnRollOff:
            String(localized: "Roll On/Roll Off", bundle: .module, comment: "Merchant Ship Entity Subtype")

        case .ferry:
            String(localized: "Ferry", bundle: .module, comment: "Merchant Ship Entity Subtype")

        case .heavyLift:
            String(localized: "Heavy Lift", bundle: .module, comment: "Merchant Ship Entity Subtype")

        case .hovercraft:
            String(localized: "Hovercraft", bundle: .module, comment: "Merchant Ship Entity Subtype")

        case .lashCarrierWithBarges:
            String(localized: "Lash Carrier (with Barges)", bundle: .module, comment: "Merchant Ship Entity Subtype")

        case .oilerTanker:
            String(localized: "Oiler/Tanker", bundle: .module, comment: "Merchant Ship Entity Subtype")

        case .passenger:
            String(localized: "Passenger", bundle: .module, comment: "Merchant Ship Entity Subtype")

        case .tugOceanGoing:
            String(localized: "Tug, Ocean Going", bundle: .module, comment: "Merchant Ship Entity Subtype")

        case .tow:
            String(localized: "Tow", bundle: .module, comment: "Merchant Ship Entity Subtype")

        case .transportShipHazardousMaterial:
            String(localized: "Transport Ship, Hazardous Material", bundle: .module, comment: "Merchant Ship Entity Subtype")

        case .junkDhow:
            String(localized: "Junk/Dhow", bundle: .module, comment: "Merchant Ship Entity Subtype")

        case .bargeNotSelfPropelled:
            String(localized: "Barge, Not Self-Propelled", bundle: .module, comment: "Merchant Ship Entity Subtype")

        case .hospitalShip:
            String(localized: "Hospital Ship", bundle: .module, comment: "Merchant Ship Entity Subtype")
        }
    }
}
