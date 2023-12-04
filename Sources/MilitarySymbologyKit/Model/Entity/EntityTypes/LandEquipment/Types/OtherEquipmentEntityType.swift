//
//  OtherEquipmentEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

public enum OtherEquipmentEntityType: String, CaseIterable, EntityType {
    case none = "00"
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

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)
        case .antennae:
            String(localized: "Antennae", bundle: .module, comment: "Other Equipment Entity Type")

        case .bomb:
            String(localized: "Bomb", bundle: .module, comment: "Other Equipment Entity Type")

        case .boobyTrap:
            String(localized: "Booby Trap", bundle: .module, comment: "Other Equipment Entity Type")

        case .cbrnEquipment:
            String(localized: "CBRN Equipment", bundle: .module, comment: "Other Equipment Entity Type")

        case .computerSystem:
            String(localized: "Computer System", bundle: .module, comment: "Other Equipment Entity Type")

        case .commandLaunchEquipmentCLE:
            String(localized: "Command Launch Equipment (CLE)", bundle: .module, comment: "Other Equipment Entity Type")

        case .generatorSet:
            String(localized: "Generator Set", bundle: .module, comment: "Other Equipment Entity Type")

        case .groundBasedMidcourseDefenseGMDFireControlGFCenter:
            String(localized: "Ground-based Midcourse Defense (GMD) Fire Control (GFC) Center", bundle: .module, comment: "Other Equipment Entity Type")

        case .inFlightInterceptorCommunicationsSystemIFICSDataTerminalIDT:
            String(localized: "In-Flight Interceptor Communications System (IFICS) Data Terminal (IDT)", bundle: .module, comment: "Other Equipment Entity Type")

        case .laser:
            String(localized: "Laser", bundle: .module, comment: "Other Equipment Entity Type")

        case .militaryInformationSupportOperationsMISO:
            String(localized: "Military Information Support Operations (MISO)", bundle: .module, comment: "Other Equipment Entity Type")

        case .sustainmentShipments:
            String(localized: "Sustainment Shipments", bundle: .module, comment: "Other Equipment Entity Type")

        case .tent:
            String(localized: "Tent", bundle: .module, comment: "Other Equipment Entity Type")

        case .unitDeploymentShipments:
            String(localized: "Unit Deployment Shipments", bundle: .module, comment: "Other Equipment Entity Type")

        case .emergencyMedicalOperation:
            String(localized: "Emergency Medical Operation", bundle: .module, comment: "Other Equipment Entity Type")
        }
    }

    public var subtypes: [AnyEntitySubtype] {
        switch self {
        case .emergencyMedicalOperation:
            EmergencyMedicalOperationEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        default:
            [.none]
        }
    }
}
