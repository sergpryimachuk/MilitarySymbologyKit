//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//  

import Foundation

extension OceanographicEntity {
    enum GeophysicsAcousticsEntityType: String, CaseIterable, EntityType {
        case mineWarfareBottomDescriptors = "01"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .mineWarfareBottomDescriptors:
                String(localized: "Mine Warfare (MIW) Bottom Descriptors", comment: "Geophysics/Acoustics Entity Type")
            }
        }
    }

}
