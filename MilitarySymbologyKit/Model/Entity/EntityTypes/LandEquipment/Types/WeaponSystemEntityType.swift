//
//  WeaponSystemEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum WeaponSystemEntityType: String, CaseIterable, EntityType {
    case rifle = "01"
    case machineGun = "02"
    case grenadeLauncher = "03"
    case flameThrower = "04"
    case airDefenseGun = "05"
    case antitankGun = "06"
    case directFireGun = "07"
    case recoillessGun = "08"
    case howitzer = "09"
    case missileLauncher = "10"
    case airDefenseMissileLauncher = "11"
    case antitankMissileLauncher = "12"
    case surfaceToSurfaceMissileLauncher = "13"
    case mortar = "14"
    case singleRocketLauncher = "15"
    case multipleRocketLauncher = "16"
    case antitankRocketLauncher = "17"
    case nonlethalWeapon = "18"
    case taser = "19"
    case waterCannon = "20"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .rifle:
            String(localized: "Rifle", comment: "Weapon System Entity Type")
            
        case .machineGun:
            String(localized: "Machine Gun", comment: "Weapon System Entity Type")
            
        case .grenadeLauncher:
            String(localized: "Grenade Launcher", comment: "Weapon System Entity Type")
            
        case .flameThrower:
            String(localized: "Flame Thrower", comment: "Weapon System Entity Type")
            
        case .airDefenseGun:
            String(localized: "Air Defense Gun", comment: "Weapon System Entity Type")
            
        case .antitankGun:
            String(localized: "Antitank Gun", comment: "Weapon System Entity Type")
            
        case .directFireGun:
            String(localized: "Direct Fire Gun", comment: "Weapon System Entity Type")
            
        case .recoillessGun:
            String(localized: "Recoilless Gun", comment: "Weapon System Entity Type")
            
        case .howitzer:
            String(localized: "Howitzer", comment: "Weapon System Entity Type")
            
        case .missileLauncher:
            String(localized: "Missile Launcher", comment: "Weapon System Entity Type")
            
        case .airDefenseMissileLauncher:
            String(localized: "Air Defense Missile Launcher", comment: "Weapon System Entity Type")
            
        case .antitankMissileLauncher:
            String(localized: "Antitank Missile Launcher", comment: "Weapon System Entity Type")
            
        case .surfaceToSurfaceMissileLauncher:
            String(localized: "Surface-to-Surface Missile Launcher", comment: "Weapon System Entity Type")
            
        case .mortar:
            String(localized: "Mortar", comment: "Weapon System Entity Type")
            
        case .singleRocketLauncher:
            String(localized: "Single Rocket Launcher", comment: "Weapon System Entity Type")
            
        case .multipleRocketLauncher:
            String(localized: "Multiple Rocket Launcher", comment: "Weapon System Entity Type")
            
        case .antitankRocketLauncher:
            String(localized: "Antitank Rocket Launcher", comment: "Weapon System Entity Type")
            
        case .nonlethalWeapon:
            String(localized: "Nonlethal Weapon", comment: "Weapon System Entity Type")
            
        case .taser:
            String(localized: "Taser", comment: "Weapon System Entity Type")
            
        case .waterCannon:
            String(localized: "Water Cannon", comment: "Weapon System Entity Type")
        }
    }
}
