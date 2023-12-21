//
//  Created with ♥ by Serhii Pryimachuk on 21.12.2023.
//

import Foundation

public enum SonobuoyEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case ambientNoise = "01"
    case airTransportableCommunication = "02"
    case barra = "03"
    case bathythermographTransmitting = "04"
    case commandActiveMultiBeamCAMBS = "05"
    case commandActiveSonobuoyDirectionalCASS = "06"
    case digitalFrequencyAnalysisRecordingDIFAR = "07"
    case directionalCommandActiveSonobuoySystemDICASS = "08"
    case expendableReliableAcousticPathSonobuoyERAPS = "09"
    case expired = "10"
    case kingpin = "11"
    case lowFrequencyAnalysisRecordingLOFAR = "12"
    case patternCenter = "13"
    case rangeOnly = "14"
    case verticalLineArrayDirectionalFrequencyAnalysisRecordingDIFAR = "15"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            return String(localized: "None", bundle: .module)
        case .ambientNoise:
            return String(localized: "Ambient Noise", bundle: .module, comment: "Sonobuoy Entity Subtype")
        case .airTransportableCommunication:
            return String(localized: "Air Transportable Communication", bundle: .module, comment: "Sonobuoy Entity Subtype")
        case .barra:
            return String(localized: "Barra", bundle: .module, comment: "Sonobuoy Entity Subtype")
        case .bathythermographTransmitting:
            return String(localized: "Bathythermograph Transmitting", bundle: .module, comment: "Sonobuoy Entity Subtype")
        case .commandActiveMultiBeamCAMBS:
            return String(localized: "Command Active Multi-Beam (CAMBS)", bundle: .module, comment: "Sonobuoy Entity Subtype")
        case .commandActiveSonobuoyDirectionalCASS:
            return String(localized: "Command Active Sonobuoy Directional Command Active Sonobuoy System (CASS)", bundle: .module, comment: "Sonobuoy Entity Subtype")
        case .digitalFrequencyAnalysisRecordingDIFAR:
            return String(localized: "Digital Frequency Analysis and Recording (DIFAR)", bundle: .module, comment: "Sonobuoy Entity Subtype")
        case .directionalCommandActiveSonobuoySystemDICASS:
            return String(localized: "Directional Command Active Sonobuoy System (DICASS)", bundle: .module, comment: "Sonobuoy Entity Subtype")
        case .expendableReliableAcousticPathSonobuoyERAPS:
            return String(localized: "Expendable Reliable Acoustic Path Sonobuoy (ERAPS)", bundle: .module, comment: "Sonobuoy Entity Subtype")
        case .expired:
            return String(localized: "Expired", bundle: .module, comment: "Sonobuoy Entity Subtype")
        case .kingpin:
            return String(localized: "Kingpin", bundle: .module, comment: "Sonobuoy Entity Subtype")
        case .lowFrequencyAnalysisRecordingLOFAR:
            return String(localized: "Low Frequency Analysis and Recording (LOFAR)", bundle: .module, comment: "Sonobuoy Entity Subtype")
        case .patternCenter:
            return String(localized: "Pattern Center", bundle: .module, comment: "Sonobuoy Entity Subtype")
        case .rangeOnly:
            return String(localized: "Range Only", bundle: .module, comment: "Sonobuoy Entity Subtype")
        case .verticalLineArrayDirectionalFrequencyAnalysisRecordingDIFAR:
            return String(localized: "Vertical Line Array Directional Frequency Analysis and Recording (DIFAR)", bundle: .module, comment: "Sonobuoy Entity Subtype")
        }
    }
}
