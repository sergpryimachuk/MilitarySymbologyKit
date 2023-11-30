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
            String(localized: "Chemical Agent", comment: "Hazard Materials Incident Subtype")
        case .corrosiveMaterial:
            String(localized: "Corrosive Material", comment: "Hazard Materials Incident Subtype")
        case .hazardousWhenWet:
            String(localized: "Hazardous When Wet", comment: "Hazard Materials Incident Subtype")
        case .explosiveMaterial:
            String(localized: "Explosive Material", comment: "Hazard Materials Incident Subtype")
        case .flammableGas:
            String(localized: "Flammable Gas", comment: "Hazard Materials Incident Subtype")
        case .flammableLiquid:
            String(localized: "Flammable Liquid", comment: "Hazard Materials Incident Subtype")
        case .flammableSolid:
            String(localized: "Flammable Solid", comment: "Hazard Materials Incident Subtype")
        case .nonFlammableGas:
            String(localized: "Non-Flammable Gas", comment: "Hazard Materials Incident Subtype")
        case .organicPeroxide:
            String(localized: "Organic Peroxide", comment: "Hazard Materials Incident Subtype")
        case .oxidizer:
            String(localized: "Oxidizer", comment: "Hazard Materials Incident Subtype")
        case .radioactiveMaterial:
            String(localized: "Radioactive Material", comment: "Hazard Materials Incident Subtype")
        case .spontaneouslyCombustibleMaterial:
            String(localized: "Spontaneously Combustible Material", comment: "Hazard Materials Incident Subtype")
        case .toxicGas:
            String(localized: "Toxic Gas", comment: "Hazard Materials Incident Subtype")
        case .toxicInfectiousMaterial:
            String(localized: "Toxic Infectious Material", comment: "Hazard Materials Incident Subtype")
        case .unexplodedOrdnance:
            String(localized: "Unexploded Ordnance", comment: "Hazard Materials Incident Subtype")
        }
    }
}
