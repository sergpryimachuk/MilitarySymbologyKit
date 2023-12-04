//
//  TransportationInfrastructureSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

public enum TransportationInfrastructureSubtype: String, CaseIterable, EntitySubtype {
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

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)
        case .airportAirBase:
            String(localized: "Airport/Air Base", bundle: .module, comment: "Transportation Infrastructure Subtype")
        case .airTrafficControlFacility:
            String(localized: "Air Traffic Control Facility", bundle: .module, comment: "Transportation Infrastructure Subtype")
        case .busStation:
            String(localized: "Bus Station", bundle: .module, comment: "Transportation Infrastructure Subtype")
        case .ferryTerminal:
            String(localized: "Ferry Terminal", bundle: .module, comment: "Transportation Infrastructure Subtype")
        case .helicopterLandingSite:
            String(localized: "Helicopter Landing Site", bundle: .module, comment: "Transportation Infrastructure Subtype")
        case .maintenanceFacility:
            String(localized: "Maintenance Facility", bundle: .module, comment: "Transportation Infrastructure Subtype")
        case .railheadRailroadStation:
            String(localized: "Railhead/Railroad Station", bundle: .module, comment: "Transportation Infrastructure Subtype")
        case .restStop:
            String(localized: "Rest Stop", bundle: .module, comment: "Transportation Infrastructure Subtype")
        case .seaPortNavalBase:
            String(localized: "Sea Port/Naval Base", bundle: .module, comment: "Transportation Infrastructure Subtype")
        case .shipYard:
            String(localized: "Ship Yard", bundle: .module, comment: "Transportation Infrastructure Subtype")
        case .tollFacility:
            String(localized: "Toll Facility", bundle: .module, comment: "Transportation Infrastructure Subtype")
        case .trafficInspectionFacility:
            String(localized: "Traffic Inspection Facility", bundle: .module, comment: "Transportation Infrastructure Subtype")
        case .tunnel:
            String(localized: "Tunnel", bundle: .module, comment: "Transportation Infrastructure Subtype")
        }
    }
}
