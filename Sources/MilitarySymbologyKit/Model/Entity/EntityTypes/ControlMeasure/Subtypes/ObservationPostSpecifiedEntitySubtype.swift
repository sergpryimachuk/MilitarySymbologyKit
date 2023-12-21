//
//  Created with ♥ by Serhii Pryimachuk on 21.12.2023.
//

import Foundation

public enum ObservationPostSpecifiedEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case reconnaissanceOutpost = "01"
    case forwardObserverOutpost = "02"
    case cbrnObservationOutpost = "03"
    case sensorOutpostListeningPost = "04"
    case combatOutpost = "05"
    
    public var id: String { rawValue }
    
    public var name: String {
        switch self {
        case .none:
            return String(localized: "None", bundle: .module)
            
        case .reconnaissanceOutpost:
            return String(localized: "Reconnaissance Outpost", bundle: .module, comment: "Observation Post Outpost Entity Subtype")
            
        case .forwardObserverOutpost:
            return String(localized: "Forward Observer Outpost", bundle: .module, comment: "Observation Post Outpost Entity Subtype")
            
        case .cbrnObservationOutpost:
            return String(localized: "CBRN Observation Outpost", bundle: .module, comment: "Observation Post Outpost Entity Subtype")
            
        case .sensorOutpostListeningPost:
            return String(localized: "Sensor Outpost/Listening Post", bundle: .module, comment: "Observation Post Outpost Entity Subtype")
            
        case .combatOutpost:
            return String(localized: "Combat Outpost", bundle: .module, comment: "Observation Post Outpost Entity Subtype")
        }
    }
}
