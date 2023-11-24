//
//  OtherEquipmentEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum OtherEquipmentEntityType: String, CaseIterable, Identifiable {
    case antennae = "01"
    case bomb = "02"
    case boobyTrap = "03"
    case cbrnEquipment = "04"
    case computerSystem = "05"
    case commandLaunchEquipmentCLE = "06"
    case generatorSet = "07"
    case groundBasedMidcourseDefenseGMDFireControlGFCenter = "08"
    case inFlightInterceptorCommunicationsSystemIFICSDataTerminalIDT = "09"
    case laser = "10"
    case militaryInformationSupportOperationsMISO = "11"
    case sustainmentShipments = "12"
    case tent = "13"
    case unitDeploymentShipments = "14"
    case emergencyMedicalOperation = "15"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .antennae:
            return String(localized: "Antennae", comment: "Other Equipment Entity Type")
            
        case .bomb:
            return String(localized: "Bomb", comment: "Other Equipment Entity Type")
            
        case .boobyTrap:
            return String(localized: "Booby Trap", comment: "Other Equipment Entity Type")
            
        case .cbrnEquipment:
            return String(localized: "CBRN Equipment", comment: "Other Equipment Entity Type")
            
        case .computerSystem:
            return String(localized: "Computer System", comment: "Other Equipment Entity Type")
            
        case .commandLaunchEquipmentCLE:
            return String(localized: "Command Launch Equipment (CLE)", comment: "Other Equipment Entity Type")
            
        case .generatorSet:
            return String(localized: "Generator Set", comment: "Other Equipment Entity Type")
            
        case .groundBasedMidcourseDefenseGMDFireControlGFCenter:
            return String(localized: "Ground-based Midcourse Defense (GMD) Fire Control (GFC) Center", comment: "Other Equipment Entity Type")
            
        case .inFlightInterceptorCommunicationsSystemIFICSDataTerminalIDT:
            return String(localized: "In-Flight Interceptor Communications System (IFICS) Data Terminal (IDT)", comment: "Other Equipment Entity Type")
            
        case .laser:
            return String(localized: "Laser", comment: "Other Equipment Entity Type")
            
        case .militaryInformationSupportOperationsMISO:
            return String(localized: "Military Information Support Operations (MISO)", comment: "Other Equipment Entity Type")
            
        case .sustainmentShipments:
            return String(localized: "Sustainment Shipments", comment: "Other Equipment Entity Type")
            
        case .tent:
            return String(localized: "Tent", comment: "Other Equipment Entity Type")
            
        case .unitDeploymentShipments:
            return String(localized: "Unit Deployment Shipments", comment: "Other Equipment Entity Type")
            
        case .emergencyMedicalOperation:
            return String(localized: "Emergency Medical Operation", comment: "Other Equipment Entity Type")
        }
    }
}
