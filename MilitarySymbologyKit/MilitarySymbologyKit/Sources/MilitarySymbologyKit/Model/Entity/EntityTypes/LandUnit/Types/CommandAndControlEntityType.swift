//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

public extension LandUnitEntity {
    public enum CommandAndControlEntityType: String, CaseIterable, Identifiable, EntityType {
        case none = "00"
        case broadcastTransmitterAntennae = "01"
        case civilAffairs = "02"
        case civilMilitaryCooperation = "03"
        case informationOperations = "04"
        case liaison = "05"
        case militaryInformationSupportOperations = "06"
        case radio = "07"
        case radioRelay = "08"
        case radioTeletypeCenter = "09"
        case signal = "10"
        case tacticalSatellite = "11"
        case videoImageryCombatCamera = "12"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None", bundle: .module, comment: "Command and Control Entity Type")

            case .broadcastTransmitterAntennae:
                String(localized: "Broadcast Transmitter Antennae", bundle: .module, comment: "Command and Control Entity Type")

            case .civilAffairs:
                String(localized: "Civil Affairs", bundle: .module, comment: "Command and Control Entity Type")

            case .civilMilitaryCooperation:
                String(localized: "Civil Military Cooperation", bundle: .module, comment: "Command and Control Entity Type")

            case .informationOperations:
                String(localized: "Information Operations", bundle: .module, comment: "Command and Control Entity Type")

            case .liaison:
                String(localized: "Liaison", bundle: .module, comment: "Command and Control Entity Type")

            case .militaryInformationSupportOperations:
                String(localized: "Military Information Support Operations", bundle: .module, comment: "Command and Control Entity Type")

            case .radio:
                String(localized: "Radio", bundle: .module, comment: "Command and Control Entity Type")

            case .radioRelay:
                String(localized: "Radio Relay", bundle: .module, comment: "Command and Control Entity Type")

            case .radioTeletypeCenter:
                String(localized: "Radio Teletype Center", bundle: .module, comment: "Command and Control Entity Type")

            case .signal:
                String(localized: "Signal", bundle: .module, comment: "Command and Control Entity Type")

            case .tacticalSatellite:
                String(localized: "Tactical Satellite", bundle: .module, comment: "Command and Control Entity Type")

            case .videoImageryCombatCamera:
                String(localized: "Video Imagery Combat Camera", bundle: .module, comment: "Command and Control Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            switch self {
            case .none:
                [.none]
            case .signal:
                SignalEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            default:
                AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            }
        }
    }
}
