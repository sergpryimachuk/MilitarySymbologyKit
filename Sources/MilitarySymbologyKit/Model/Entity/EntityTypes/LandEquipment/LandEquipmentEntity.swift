//
//  LandEquipmentEntity.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

public enum LandEquipmentEntity: String, CaseIterable, Entity {
    case weaponWeaponSystem = "11"
    case vehicle = "12"
    case engineerVehiclesAndEquipment = "13"
    case utilityVehicles = "14"
    case train = "15"
    case civilianVehicle = "16"
    case lawEnforcement = "17"
    case packAnimals = "18"
    case missileSupport = "19"
    case otherEquipment = "20"
    case landMines = "21"
    case sensors = "22"
    case emergencyOperation = "23"
    case manualTrack = "24"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .weaponWeaponSystem:
            String(localized: "Weapon/Weapon System", bundle: .module, comment: "Land Equipment Entity")

        case .vehicle:
            String(localized: "Vehicle", bundle: .module, comment: "Land Equipment Entity")

        case .engineerVehiclesAndEquipment:
            String(localized: "Engineer Vehicles and Equipment", bundle: .module, comment: "Land Equipment Entity")

        case .utilityVehicles:
            String(localized: "Utility Vehicles", bundle: .module, comment: "Land Equipment Entity")

        case .train:
            String(localized: "Train", bundle: .module, comment: "Land Equipment Entity")

        case .civilianVehicle:
            String(localized: "Civilian Vehicle", bundle: .module, comment: "Land Equipment Entity")

        case .lawEnforcement:
            String(localized: "Law Enforcement", bundle: .module, comment: "Land Equipment Entity")

        case .packAnimals:
            String(localized: "Pack Animals", bundle: .module, comment: "Land Equipment Entity")

        case .missileSupport:
            String(localized: "Missile Support", bundle: .module, comment: "Land Equipment Entity")

        case .otherEquipment:
            String(localized: "Other Equipment", bundle: .module, comment: "Land Equipment Entity")

        case .landMines:
            String(localized: "Land Mines", bundle: .module, comment: "Land Equipment Entity")

        case .sensors:
            String(localized: "Sensors", bundle: .module, comment: "Land Equipment Entity")

        case .emergencyOperation:
            String(localized: "Emergency Operation", bundle: .module, comment: "Land Equipment Entity")

        case .manualTrack:
            String(localized: "Manual Track", bundle: .module, comment: "Land Equipment Entity")
        }
    }

    public var types: [AnyEntityType] {
        switch self {
        case .weaponWeaponSystem:
            WeaponSystemEntityType.allCases.map { AnyEntityType($0) }
        case .vehicle:
            VehicleEntityType.allCases.map { AnyEntityType($0) }
        case .engineerVehiclesAndEquipment:
            EngineerVehiclesAndEquipmentEntityType.allCases.map { AnyEntityType($0) }
        case .utilityVehicles:
            UtilityVehiclesEntityType.allCases.map { AnyEntityType($0) }
        case .train:
            TrainEntityType.allCases.map { AnyEntityType($0) }
        case .civilianVehicle:
            CivilianVehicleEntityType.allCases.map { AnyEntityType($0) }
        case .lawEnforcement:
            LawEnforcementEntityType.allCases.map { AnyEntityType($0) }
        case .packAnimals:
            [.none]
        case .missileSupport:
            MissileSupportEntityType.allCases.map { AnyEntityType($0) }
        case .otherEquipment:
            OtherEquipmentEntityType.allCases.map { AnyEntityType($0) }
        case .landMines:
            LandMinesEntityType.allCases.map { AnyEntityType($0) }
        case .sensors:
            SensorsEntityType.allCases.map { AnyEntityType($0) }
        case .emergencyOperation:
            EmergencyOperationEntityType.allCases.map { AnyEntityType($0) }
        case .manualTrack:
            [.none]
        }
    }
}
