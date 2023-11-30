//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

public enum SignalsIntelligenceEntity: String, CaseIterable, Identifiable, Entity {
    case signalIntercept = "11"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .signalIntercept:
            String(localized: "Signal Intercept", bundle: .module, comment: "Signals Intelligence Entity")
        }
    }

    public var types: [AnyEntityType] {
        switch self {
        case .signalIntercept:
            SignalInterceptEntityType.allCases.map { AnyEntityType($0) }
        }
    }
}
