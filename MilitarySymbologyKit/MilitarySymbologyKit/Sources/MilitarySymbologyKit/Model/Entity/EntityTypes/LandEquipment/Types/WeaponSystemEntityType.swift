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
            String(localized: "Rifle", bundle: .module, comment: "Weapon System Entity Type")

        case .machineGun:
            String(localized: "Machine Gun", bundle: .module, comment: "Weapon System Entity Type")

        case .grenadeLauncher:
            String(localized: "Grenade Launcher", bundle: .module, comment: "Weapon System Entity Type")

        case .flameThrower:
            String(localized: "Flame Thrower", bundle: .module, comment: "Weapon System Entity Type")

        case .airDefenseGun:
            String(localized: "Air Defense Gun", bundle: .module, comment: "Weapon System Entity Type")

        case .antitankGun:
            String(localized: "Antitank Gun", bundle: .module, comment: "Weapon System Entity Type")

        case .directFireGun:
            String(localized: "Direct Fire Gun", bundle: .module, comment: "Weapon System Entity Type")

        case .recoillessGun:
            String(localized: "Recoilless Gun", bundle: .module, comment: "Weapon System Entity Type")

        case .howitzer:
            String(localized: "Howitzer", bundle: .module, comment: "Weapon System Entity Type")

        case .missileLauncher:
            String(localized: "Missile Launcher", bundle: .module, comment: "Weapon System Entity Type")

        case .airDefenseMissileLauncher:
            String(localized: "Air Defense Missile Launcher", bundle: .module, comment: "Weapon System Entity Type")

        case .antitankMissileLauncher:
            String(localized: "Antitank Missile Launcher", bundle: .module, comment: "Weapon System Entity Type")

        case .surfaceToSurfaceMissileLauncher:
            String(localized: "Surface-to-Surface Missile Launcher", bundle: .module, comment: "Weapon System Entity Type")

        case .mortar:
            String(localized: "Mortar", bundle: .module, comment: "Weapon System Entity Type")

        case .singleRocketLauncher:
            String(localized: "Single Rocket Launcher", bundle: .module, comment: "Weapon System Entity Type")

        case .multipleRocketLauncher:
            String(localized: "Multiple Rocket Launcher", bundle: .module, comment: "Weapon System Entity Type")

        case .antitankRocketLauncher:
            String(localized: "Antitank Rocket Launcher", bundle: .module, comment: "Weapon System Entity Type")

        case .nonlethalWeapon:
            String(localized: "Nonlethal Weapon", bundle: .module, comment: "Weapon System Entity Type")

        case .taser:
            String(localized: "Taser", bundle: .module, comment: "Weapon System Entity Type")

        case .waterCannon:
            String(localized: "Water Cannon", bundle: .module, comment: "Weapon System Entity Type")
        }
    }

    var subtypes: [AnyEntitySubtype] {
        switch self {
        case .rifle:
            RifleEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .airDefenseMissileLauncher:
            AirDefenseMissileLauncherEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .flameThrower, .nonlethalWeapon, .taser, .waterCannon:
            [.none]
        default:
            LightMediumHeavyEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        }
    }
}
