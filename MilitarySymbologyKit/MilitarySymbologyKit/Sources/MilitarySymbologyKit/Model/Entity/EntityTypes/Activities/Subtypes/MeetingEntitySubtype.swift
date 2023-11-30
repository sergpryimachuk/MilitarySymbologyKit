//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//  

import Foundation

enum MeetingEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case pollingPlaceElection = "01"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            String(localized: "None")
        case .pollingPlaceElection:
            String(localized: "Polling Place/Election", comment: "Meeting Entity Subtype")
        }
    }
}
