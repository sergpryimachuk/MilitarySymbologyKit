//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

enum EchelonBrigadeBelowDescriptor: String, CaseIterable, Descriptor {
    case teamCrew = "1"
    case squad = "2"
    case section = "3"
    case platoonDetachment = "4"
    case companyBatteryTroop = "5"
    case battalionSquadron = "6"
    case regimentGroup = "7"
    case brigade = "8"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .teamCrew:
            String(localized: "Team/Crew", bundle: .module, comment: "Echelon at brigade and below amplifier descriptor")

        case .squad:
            String(localized: "Squad", bundle: .module, comment: "Echelon at brigade and below amplifier descriptor")

        case .section:
            String(localized: "Section", bundle: .module, comment: "Echelon at brigade and below amplifier descriptor")

        case .platoonDetachment:
            String(localized: "Platoon/Detachment", bundle: .module, comment: "Echelon at brigade and below amplifier descriptor")

        case .companyBatteryTroop:
            String(localized: "Company/Battery/Troop", bundle: .module, comment: "Echelon at brigade and below amplifier descriptor")

        case .battalionSquadron:
            String(localized: "Battalion/Squadron", bundle: .module, comment: "Echelon at brigade and below amplifier descriptor")

        case .regimentGroup:
            String(localized: "Regiment/Group", bundle: .module, comment: "Echelon at brigade and below amplifier descriptor")

        case .brigade:
            String(localized: "Brigade", bundle: .module, comment: "Echelon at brigade and below amplifier descriptor")
        }
    }
}
