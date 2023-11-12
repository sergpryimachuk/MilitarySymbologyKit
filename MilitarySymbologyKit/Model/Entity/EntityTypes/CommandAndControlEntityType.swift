//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

enum CommandAndControlEntityType: String, CaseIterable, EntityType {
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
        let localizationValue: String.LocalizationValue = switch self {
        case .broadcastTransmitterAntennae:
            "Broadcast Transmitter Antennae"

        case .civilAffairs:
            "Civil Affairs"

        case .civilMilitaryCooperation:
            "Civil-Military Cooperation"

        case .informationOperations:
            "Information Operations"

        case .liaison:
            "Liaison"

        case .militaryInformationSupportOperations:
            "Military Information Support Operations (MISO)"

        case .radio:
            "Radio"

        case .radioRelay:
            "Radio Relay"

        case .radioTeletypeCenter:
            "Radio Teletype Center"

        case .signal:
            "Signal"

        case .tacticalSatellite:
            "Tactical Satellite"

        case .videoImageryCombatCamera:
            "Video Imagery (Combat Camera)"

        case .none:
            "None"
        }
        
        return String(localized: localizationValue, comment: "Command and Control Entity Type")
    }
}
