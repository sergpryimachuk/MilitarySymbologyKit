//
//  OtherEquipmentEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum OtherEquipmentEntityType: String, CaseIterable, EntityType {
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
            String(localized: "Antennae", comment: "Other Equipment Entity Type")

        case .bomb:
            String(localized: "Bomb", comment: "Other Equipment Entity Type")

        case .boobyTrap:
            String(localized: "Booby Trap", comment: "Other Equipment Entity Type")

        case .cbrnEquipment:
            String(localized: "CBRN Equipment", comment: "Other Equipment Entity Type")

        case .computerSystem:
            String(localized: "Computer System", comment: "Other Equipment Entity Type")

        case .commandLaunchEquipmentCLE:
            String(localized: "Command Launch Equipment (CLE)", comment: "Other Equipment Entity Type")

        case .generatorSet:
            String(localized: "Generator Set", comment: "Other Equipment Entity Type")

        case .groundBasedMidcourseDefenseGMDFireControlGFCenter:
            String(localized: "Ground-based Midcourse Defense (GMD) Fire Control (GFC) Center", comment: "Other Equipment Entity Type")

        case .inFlightInterceptorCommunicationsSystemIFICSDataTerminalIDT:
            String(localized: "In-Flight Interceptor Communications System (IFICS) Data Terminal (IDT)", comment: "Other Equipment Entity Type")

        case .laser:
            String(localized: "Laser", comment: "Other Equipment Entity Type")

        case .militaryInformationSupportOperationsMISO:
            String(localized: "Military Information Support Operations (MISO)", comment: "Other Equipment Entity Type")

        case .sustainmentShipments:
            String(localized: "Sustainment Shipments", comment: "Other Equipment Entity Type")

        case .tent:
            String(localized: "Tent", comment: "Other Equipment Entity Type")

        case .unitDeploymentShipments:
            String(localized: "Unit Deployment Shipments", comment: "Other Equipment Entity Type")

        case .emergencyMedicalOperation:
            String(localized: "Emergency Medical Operation", comment: "Other Equipment Entity Type")
        }
    }
}
