//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

enum SignalsIntelligenceEntity: String, CaseIterable, Identifiable, Entity {
    case signalIntercept = "11"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .signalIntercept:
            String(localized: "Signal Intercept", comment: "Signals Intelligence Entity")
        }
    }

    var types: [AnyEntityType] {
        switch self {
        case .signalIntercept:
            SignalInterceptEntityType.allCases.map { AnyEntityType($0) }
        }
    }
}
