//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

extension LandUnitEntity {
    enum CommandAndControlEntityType: String, CaseIterable, Identifiable, EntityType {
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
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .none:
                return String(localized: "None", comment: "Command and Control Entity Type")
                
            case .broadcastTransmitterAntennae:
                return String(localized: "Broadcast Transmitter Antennae", comment: "Command and Control Entity Type")
                
            case .civilAffairs:
                return String(localized: "Civil Affairs", comment: "Command and Control Entity Type")
                
            case .civilMilitaryCooperation:
                return String(localized: "Civil Military Cooperation", comment: "Command and Control Entity Type")
                
            case .informationOperations:
                return String(localized: "Information Operations", comment: "Command and Control Entity Type")
                
            case .liaison:
                return String(localized: "Liaison", comment: "Command and Control Entity Type")
                
            case .militaryInformationSupportOperations:
                return String(localized: "Military Information Support Operations", comment: "Command and Control Entity Type")
                
            case .radio:
                return String(localized: "Radio", comment: "Command and Control Entity Type")
                
            case .radioRelay:
                return String(localized: "Radio Relay", comment: "Command and Control Entity Type")
                
            case .radioTeletypeCenter:
                return String(localized: "Radio Teletype Center", comment: "Command and Control Entity Type")
                
            case .signal:
                return String(localized: "Signal", comment: "Command and Control Entity Type")
                
            case .tacticalSatellite:
                return String(localized: "Tactical Satellite", comment: "Command and Control Entity Type")
                
            case .videoImageryCombatCamera:
                return String(localized: "Video Imagery Combat Camera", comment: "Command and Control Entity Type")
            }
        }
        
        var subtypes: [AnyEntitySubtype] {
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
