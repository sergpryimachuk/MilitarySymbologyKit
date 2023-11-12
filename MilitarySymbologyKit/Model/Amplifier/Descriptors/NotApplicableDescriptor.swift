//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//  

import Foundation

enum NotApplicableDescriptor: String, CaseIterable, Identifiable, Descriptor {
    case notApplicable = "0"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .notApplicable:
            String(localized: "Not Applicable", comment: "Not Applicable amplifier descriptor")
        }
    }
}
