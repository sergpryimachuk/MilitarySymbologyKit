//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//  

import Foundation

public enum MeetingEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case pollingPlaceElection = "01"
    
    public var id: String { rawValue }
    
    public var name: String {
        switch self {
        case .none:
            String(localized: "None")
        case .pollingPlaceElection:
            String(localized: "Polling Place/Election", bundle: .module, comment: "Meeting Entity Subtype")
        }
    }
}
