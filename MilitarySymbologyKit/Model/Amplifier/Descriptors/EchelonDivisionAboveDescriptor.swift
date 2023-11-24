//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

enum EchelonDivisionAboveDescriptor: String, CaseIterable, Descriptor {
    case division = "1"
    case corpsMEF = "2"
    case army = "3"
    case armyGroupFront = "4"
    case regionTheater = "5"
    case command = "6"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .division:
            String(localized: "Division", comment: "Echelon at division and above amplifier descriptor")
            
        case .corpsMEF:
            String(localized: "Corps/MEF", comment: "Echelon at division and above amplifier descriptor")
            
        case .army:
            String(localized: "Army", comment: "Echelon at division and above amplifier descriptor")
            
        case .armyGroupFront:
            String(localized: "Army Group/Front", comment: "Echelon at division and above amplifier descriptor")
            
        case .regionTheater:
            String(localized: "Region/Theater", comment: "Echelon at division and above amplifier descriptor")
            
        case .command:
            String(localized: "Command", comment: "Echelon at division and above amplifier descriptor")
        }
    }
}
