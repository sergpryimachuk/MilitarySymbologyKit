//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

public enum HQTFD: String, CaseIterable, Identifiable {
    case none = "0"
    case feintDummy = "1"
    case headquarters = "2"
    case feintDummyHeadquarters = "3"
    case taskForce = "4"
    case feintDummyTaskForce = "5"
    case taskForceHeadquarters = "6"
    case feintDummyTaskForceHeadquarters = "7"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)

        case .feintDummy:
            String(localized: "Feint/Dummy", bundle: .module, comment: "Headquarters/Task force/Dummy")

        case .headquarters:
            String(localized: "Headquarters", bundle: .module, comment: "Headquarters/Task force/Dummy")

        case .feintDummyHeadquarters:
            String(localized: "Feint/Dummy Headquarters", bundle: .module, comment: "Headquarters/Task force/Dummy")

        case .taskForce:
            String(localized: "Task Force", bundle: .module, comment: "Headquarters/Task force/Dummy")

        case .feintDummyTaskForce:
            String(localized: "Feint/Dummy Task Force", bundle: .module, comment: "Headquarters/Task force/Dummy")

        case .taskForceHeadquarters:
            String(localized: "Task Force Headquarters", bundle: .module, comment: "Headquarters/Task force/Dummy")

        case .feintDummyTaskForceHeadquarters:
            String(localized: "Feint/Dummy Task Force Headquarters", bundle: .module, comment: "Headquarters/Task force/Dummy")
        }
    }
}
