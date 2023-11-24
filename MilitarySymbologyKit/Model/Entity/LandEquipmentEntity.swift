//
//  LandEquipmentEntity.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum LandEquipmentEntity: String, CaseIterable, Entity {
    
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
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .weaponWeaponSystem:
            return String(localized: "Weapon/Weapon System", comment: "Land Equipment Entity")
            
        case .vehicle:
            return String(localized: "Vehicle", comment: "Land Equipment Entity")
            
        case .engineerVehiclesAndEquipment:
            return String(localized: "Engineer Vehicles and Equipment", comment: "Land Equipment Entity")
            
        case .utilityVehicles:
            return String(localized: "Utility Vehicles", comment: "Land Equipment Entity")
            
        case .train:
            return String(localized: "Train", comment: "Land Equipment Entity")
            
        case .civilianVehicle:
            return String(localized: "Civilian Vehicle", comment: "Land Equipment Entity")
            
        case .lawEnforcement:
            return String(localized: "Law Enforcement", comment: "Land Equipment Entity")
            
        case .packAnimals:
            return String(localized: "Pack Animals", comment: "Land Equipment Entity")
            
        case .missileSupport:
            return String(localized: "Missile Support", comment: "Land Equipment Entity")
            
        case .otherEquipment:
            return String(localized: "Other Equipment", comment: "Land Equipment Entity")
            
        case .landMines:
            return String(localized: "Land Mines", comment: "Land Equipment Entity")
            
        case .sensors:
            return String(localized: "Sensors", comment: "Land Equipment Entity")
            
        case .emergencyOperation:
            return String(localized: "Emergency Operation", comment: "Land Equipment Entity")
            
        case .manualTrack:
            return String(localized: "Manual Track", comment: "Land Equipment Entity")
        }
    }
    
    var types: [AnyEntityType] {
        switch self {
        case .weaponWeaponSystem:
            []
        case .vehicle:
            []
        case .engineerVehiclesAndEquipment:
            []
        case .utilityVehicles:
            []
        case .train:
            []
        case .civilianVehicle:
            []
        case .lawEnforcement:
            []
        case .packAnimals:
            []
        case .missileSupport:
            []
        case .otherEquipment:
            []
        case .landMines:
            []
        case .sensors:
            []
        case .emergencyOperation:
            []
        case .manualTrack:
            []
        }
    }
}
