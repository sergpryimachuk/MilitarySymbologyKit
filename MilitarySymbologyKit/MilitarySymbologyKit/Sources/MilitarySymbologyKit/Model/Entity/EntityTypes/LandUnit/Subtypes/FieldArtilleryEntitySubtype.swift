//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

public enum FieldArtilleryEntitySubtype: String, CaseIterable, EntitySubtype {
    case selfPropelled = "01"
    case targetAcquisition = "02"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .selfPropelled:
            String(localized: "Self-propelled", bundle: .module, comment: "Field Artillery Entity Subtype")

        case .targetAcquisition:
            String(localized: "Target Acquisition", bundle: .module, comment: "Field Artillery Entity Subtype")
        }
    }
}
