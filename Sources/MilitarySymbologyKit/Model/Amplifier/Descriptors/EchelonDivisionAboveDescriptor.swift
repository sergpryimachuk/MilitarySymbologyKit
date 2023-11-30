//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

public enum EchelonDivisionAboveDescriptor: String, CaseIterable, Descriptor {
    case division = "1"
    case corpsMEF = "2"
    case army = "3"
    case armyGroupFront = "4"
    case regionTheater = "5"
    case command = "6"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .division:
            String(localized: "Division", bundle: .module, comment: "Echelon at division and above amplifier descriptor")

        case .corpsMEF:
            String(localized: "Corps/MEF", bundle: .module, comment: "Echelon at division and above amplifier descriptor")

        case .army:
            String(localized: "Army", bundle: .module, comment: "Echelon at division and above amplifier descriptor")

        case .armyGroupFront:
            String(localized: "Army Group/Front", bundle: .module, comment: "Echelon at division and above amplifier descriptor")

        case .regionTheater:
            String(localized: "Region/Theater", bundle: .module, comment: "Echelon at division and above amplifier descriptor")

        case .command:
            String(localized: "Command", bundle: .module, comment: "Echelon at division and above amplifier descriptor")
        }
    }
}
