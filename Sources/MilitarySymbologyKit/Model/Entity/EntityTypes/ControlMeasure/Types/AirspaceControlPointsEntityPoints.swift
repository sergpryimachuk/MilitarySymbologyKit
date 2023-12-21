//
//  Created with ♥ by Serhii Pryimachuk on 21.12.2023.
//

import Foundation

public enum AirspaceControlPointsEntityPoints: String, CaseIterable, EntityType {
    case none = "00"
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
    case unmannedAerialSystem = "20"
    case vtua = "21"
    case orbit = "22"
    case orbitFigureEight = "23"
    case orbitRaceTrack = "24"
    case orbitRandomClosed = "25"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            return String(localized: "None", bundle: .module)

        case .airControlPoint:
            return String(localized: "Air Control Point", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .communicationsCheckpoint:
            return String(localized: "Communications Checkpoint", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .downedAircraftPickupPoint:
            return String(localized: "Downed Aircraft Pick-up Point", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .popUpPoint:
            return String(localized: "Pop-up Point", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .airControlRendezvous:
            return String(localized: "Air Control Rendezvous", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .tacan:
            return String(localized: "TACAN", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .capStation:
            return String(localized: "CAP Station", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .aewStation:
            return String(localized: "AEW Station", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .aswHeloAndFWStation:
            return String(localized: "ASW (Helo and F/W) Station", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .strikeInitialPoint:
            return String(localized: "Strike Initial Point", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .replenishmentStation:
            return String(localized: "Replenishment Station", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .tanking:
            return String(localized: "Tanking", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .antisubmarineWarfareRotaryWing:
            return String(localized: "Antisubmarine Warfare, Rotary Wing", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .sucapFixedWing:
            return String(localized: "SUCAP - Fixed Wing", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .sucapRotaryWing:
            return String(localized: "SUCAP - Rotary Wing", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .miwFixedWing:
            return String(localized: "MIW - Fixed Wing", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .miwRotaryWing:
            return String(localized: "MIW - Rotary Wing", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .tomcat:
            return String(localized: "Tomcat", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .rescue:
            return String(localized: "Rescue", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .unmannedAerialSystem:
            return String(localized: "Unmanned Aerial System (UAS/UA)", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .vtua:
            return String(localized: "VTUA", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .orbit:
            return String(localized: "Orbit", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .orbitFigureEight:
            return String(localized: "Orbit - Figure Eight", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .orbitRaceTrack:
            return String(localized: "Orbit - Race Track", bundle: .module, comment: "Airspace Control Points Entity Points")

        case .orbitRandomClosed:
            return String(localized: "Orbit - Random Closed", bundle: .module, comment: "Airspace Control Points Entity Points")
        }
    }

    public var subtypes: [AnyEntitySubtype] {
        [.none]
    }
}
