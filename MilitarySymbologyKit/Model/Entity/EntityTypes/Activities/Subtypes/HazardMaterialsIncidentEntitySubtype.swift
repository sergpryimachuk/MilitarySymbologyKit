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
            return String(localized: "None")
        case .chemicalAgent:
            return String(localized: "Chemical Agent", comment: "Hazard Materials Incident Subtype")
        case .corrosiveMaterial:
            return String(localized: "Corrosive Material", comment: "Hazard Materials Incident Subtype")
        case .hazardousWhenWet:
            return String(localized: "Hazardous When Wet", comment: "Hazard Materials Incident Subtype")
        case .explosiveMaterial:
            return String(localized: "Explosive Material", comment: "Hazard Materials Incident Subtype")
        case .flammableGas:
            return String(localized: "Flammable Gas", comment: "Hazard Materials Incident Subtype")
        case .flammableLiquid:
            return String(localized: "Flammable Liquid", comment: "Hazard Materials Incident Subtype")
        case .flammableSolid:
            return String(localized: "Flammable Solid", comment: "Hazard Materials Incident Subtype")
        case .nonFlammableGas:
            return String(localized: "Non-Flammable Gas", comment: "Hazard Materials Incident Subtype")
        case .organicPeroxide:
            return String(localized: "Organic Peroxide", comment: "Hazard Materials Incident Subtype")
        case .oxidizer:
            return String(localized: "Oxidizer", comment: "Hazard Materials Incident Subtype")
        case .radioactiveMaterial:
            return String(localized: "Radioactive Material", comment: "Hazard Materials Incident Subtype")
        case .spontaneouslyCombustibleMaterial:
            return String(localized: "Spontaneously Combustible Material", comment: "Hazard Materials Incident Subtype")
        case .toxicGas:
            return String(localized: "Toxic Gas", comment: "Hazard Materials Incident Subtype")
        case .toxicInfectiousMaterial:
            return String(localized: "Toxic Infectious Material", comment: "Hazard Materials Incident Subtype")
        case .unexplodedOrdnance:
            return String(localized: "Unexploded Ordnance", comment: "Hazard Materials Incident Subtype")
        }
    }
}
