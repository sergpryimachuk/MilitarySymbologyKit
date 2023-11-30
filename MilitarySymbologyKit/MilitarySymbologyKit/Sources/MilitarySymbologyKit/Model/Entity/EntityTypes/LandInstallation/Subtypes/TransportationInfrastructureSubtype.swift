//
//  TransportationInfrastructureSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

enum TransportationInfrastructureSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case airportAirBase = "01"
    case airTrafficControlFacility = "02"
    case busStation = "03"
    case ferryTerminal = "04"
    case helicopterLandingSite = "05"
    case maintenanceFacility = "06"
    case railheadRailroadStation = "07"
    case restStop = "08"
    case seaPortNavalBase = "09"
    case shipYard = "10"
    case tollFacility = "11"
    case trafficInspectionFacility = "12"
    case tunnel = "13"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
        case .airportAirBase:
            return String(localized: "Airport/Air Base", comment: "Transportation Infrastructure Subtype")
        case .airTrafficControlFacility:
            return String(localized: "Air Traffic Control Facility", comment: "Transportation Infrastructure Subtype")
        case .busStation:
            return String(localized: "Bus Station", comment: "Transportation Infrastructure Subtype")
        case .ferryTerminal:
            return String(localized: "Ferry Terminal", comment: "Transportation Infrastructure Subtype")
        case .helicopterLandingSite:
            return String(localized: "Helicopter Landing Site", comment: "Transportation Infrastructure Subtype")
        case .maintenanceFacility:
            return String(localized: "Maintenance Facility", comment: "Transportation Infrastructure Subtype")
        case .railheadRailroadStation:
            return String(localized: "Railhead/Railroad Station", comment: "Transportation Infrastructure Subtype")
        case .restStop:
            return String(localized: "Rest Stop", comment: "Transportation Infrastructure Subtype")
        case .seaPortNavalBase:
            return String(localized: "Sea Port/Naval Base", comment: "Transportation Infrastructure Subtype")
        case .shipYard:
            return String(localized: "Ship Yard", comment: "Transportation Infrastructure Subtype")
        case .tollFacility:
            return String(localized: "Toll Facility", comment: "Transportation Infrastructure Subtype")
        case .trafficInspectionFacility:
            return String(localized: "Traffic Inspection Facility", comment: "Transportation Infrastructure Subtype")
        case .tunnel:
            return String(localized: "Tunnel", comment: "Transportation Infrastructure Subtype")
        }
    }
}
