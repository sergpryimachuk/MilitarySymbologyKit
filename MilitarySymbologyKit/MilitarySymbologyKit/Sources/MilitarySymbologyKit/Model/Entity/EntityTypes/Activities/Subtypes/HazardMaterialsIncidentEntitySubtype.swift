//
//  HazardMaterialsIncidentEntitySubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 30/11/2023.
//

import Foundation

enum HazardMaterialsIncidentEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case chemicalAgent = "01"
    case corrosiveMaterial = "02"
    case hazardousWhenWet = "03"
    case explosiveMaterial = "04"
    case flammableGas = "05"
    case flammableLiquid = "06"
    case flammableSolid = "07"
    case nonFlammableGas = "08"
    case organicPeroxide = "09"
    case oxidizer = "10"
    case radioactiveMaterial = "11"
    case spontaneouslyCombustibleMaterial = "12"
    case toxicGas = "13"
    case toxicInfectiousMaterial = "14"
    case unexplodedOrdnance = "15"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            String(localized: "None")
        case .chemicalAgent:
            String(localized: "Chemical Agent", bundle: .module, comment: "Hazard Materials Incident Subtype")
        case .corrosiveMaterial:
            String(localized: "Corrosive Material", bundle: .module, comment: "Hazard Materials Incident Subtype")
        case .hazardousWhenWet:
            String(localized: "Hazardous When Wet", bundle: .module, comment: "Hazard Materials Incident Subtype")
        case .explosiveMaterial:
            String(localized: "Explosive Material", bundle: .module, comment: "Hazard Materials Incident Subtype")
        case .flammableGas:
            String(localized: "Flammable Gas", bundle: .module, comment: "Hazard Materials Incident Subtype")
        case .flammableLiquid:
            String(localized: "Flammable Liquid", bundle: .module, comment: "Hazard Materials Incident Subtype")
        case .flammableSolid:
            String(localized: "Flammable Solid", bundle: .module, comment: "Hazard Materials Incident Subtype")
        case .nonFlammableGas:
            String(localized: "Non-Flammable Gas", bundle: .module, comment: "Hazard Materials Incident Subtype")
        case .organicPeroxide:
            String(localized: "Organic Peroxide", bundle: .module, comment: "Hazard Materials Incident Subtype")
        case .oxidizer:
            String(localized: "Oxidizer", bundle: .module, comment: "Hazard Materials Incident Subtype")
        case .radioactiveMaterial:
            String(localized: "Radioactive Material", bundle: .module, comment: "Hazard Materials Incident Subtype")
        case .spontaneouslyCombustibleMaterial:
            String(localized: "Spontaneously Combustible Material", bundle: .module, comment: "Hazard Materials Incident Subtype")
        case .toxicGas:
            String(localized: "Toxic Gas", bundle: .module, comment: "Hazard Materials Incident Subtype")
        case .toxicInfectiousMaterial:
            String(localized: "Toxic Infectious Material", bundle: .module, comment: "Hazard Materials Incident Subtype")
        case .unexplodedOrdnance:
            String(localized: "Unexploded Ordnance", bundle: .module, comment: "Hazard Materials Incident Subtype")
        }
    }
}
