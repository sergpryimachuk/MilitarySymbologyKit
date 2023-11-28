//
//  AirspaceControlPointsEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum AirspaceControlPointsEntityType: String, CaseIterable, EntityType {
    case airControlPoint = "01"
    case communicationsCheckpoint = "02"
    case downedAircraftPickupPoint = "03"
    case popUpPoint = "04"
    case airControlRendezvous = "05"
    case tacan = "06"
    case capStation = "07"
    case aewStation = "08"
    case aswHeloAndFWStation = "09"
    case strikeInitialPoint = "10"
    case replenishmentStation = "11"
    case tanking = "12"
    case antisubmarineWarfareRotaryWing = "13"
    case sucapFixedWing = "14"
    case sucapRotaryWing = "15"
    case miwFixedWing = "16"
    case miwRotaryWing = "17"
    case tomcat = "18"
    case rescue = "19"
    case unmannedAerialSystemUASUA = "20"
    case vtua = "21"
    case orbit = "22"
    case orbitFigureEight = "23"
    case orbitRaceTrack = "24"
    case orbitRandomClosed = "25"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .airControlPoint:
            String(localized: "Air Control Point", comment: "Airspace Control Points Entity Type")

        case .communicationsCheckpoint:
            String(localized: "Communications Checkpoint", comment: "Airspace Control Points Entity Type")

        case .downedAircraftPickupPoint:
            String(localized: "Downed Aircraft Pick-up Point", comment: "Airspace Control Points Entity Type")

        case .popUpPoint:
            String(localized: "Pop-up Point", comment: "Airspace Control Points Entity Type")

        case .airControlRendezvous:
            String(localized: "Air Control Rendezvous", comment: "Airspace Control Points Entity Type")

        case .tacan:
            String(localized: "TACAN", comment: "Airspace Control Points Entity Type")

        case .capStation:
            String(localized: "CAP Station", comment: "Airspace Control Points Entity Type")

        case .aewStation:
            String(localized: "AEW Station", comment: "Airspace Control Points Entity Type")

        case .aswHeloAndFWStation:
            String(localized: "ASW (Helo and F/W) Station", comment: "Airspace Control Points Entity Type")

        case .strikeInitialPoint:
            String(localized: "Strike Initial Point", comment: "Airspace Control Points Entity Type")

        case .replenishmentStation:
            String(localized: "Replenishment Station", comment: "Airspace Control Points Entity Type")

        case .tanking:
            String(localized: "Tanking", comment: "Airspace Control Points Entity Type")

        case .antisubmarineWarfareRotaryWing:
            String(localized: "Antisubmarine Warfare, Rotary Wing", comment: "Airspace Control Points Entity Type")

        case .sucapFixedWing:
            String(localized: "SUCAP - Fixed Wing", comment: "Airspace Control Points Entity Type")

        case .sucapRotaryWing:
            String(localized: "SUCAP - Rotary Wing", comment: "Airspace Control Points Entity Type")

        case .miwFixedWing:
            String(localized: "MIW - Fixed Wing", comment: "Airspace Control Points Entity Type")

        case .miwRotaryWing:
            String(localized: "MIW - Rotary Wing", comment: "Airspace Control Points Entity Type")

        case .tomcat:
            String(localized: "Tomcat", comment: "Airspace Control Points Entity Type")

        case .rescue:
            String(localized: "Rescue", comment: "Airspace Control Points Entity Type")

        case .unmannedAerialSystemUASUA:
            String(localized: "Unmanned Aerial System (UAS/UA)", comment: "Airspace Control Points Entity Type")

        case .vtua:
            String(localized: "VTUA", comment: "Airspace Control Points Entity Type")

        case .orbit:
            String(localized: "Orbit", comment: "Airspace Control Points Entity Type")

        case .orbitFigureEight:
            String(localized: "Orbit - Figure Eight", comment: "Airspace Control Points Entity Type")

        case .orbitRaceTrack:
            String(localized: "Orbit - Race Track", comment: "Airspace Control Points Entity Type")

        case .orbitRandomClosed:
            String(localized: "Orbit - Random Closed", comment: "Airspace Control Points Entity Type")
        }
    }
}
