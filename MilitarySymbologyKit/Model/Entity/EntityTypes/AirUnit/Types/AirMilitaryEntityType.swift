//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//  

import Foundation

extension AirUnitEntity {
    enum MilitaryEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case fixedWing = "01"
        case rotaryWing = "02"
        case unmannedAircraftUA_UAV_UAS_RPV = "03"
        case verticalTakeoffUAVVT_UAV = "04"
        case lighterThanAir = "05"
        case airship = "06"
        case tetheredLighterThanAir = "07"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .none:
                String(localized: "None")
                
            case .fixedWing:
                String(localized: "Fixed-Wing", comment: "Military Entity Type")
                
            case .rotaryWing:
                String(localized: "Rotary-Wing", comment: "Military Entity Type")
                
            case .unmannedAircraftUA_UAV_UAS_RPV:
                String(localized: "Unmanned Aircraft (UA)/Unmanned Aerial Vehicle (UAV)/Unmanned Aircraft System (UAS)/Remote Piloted Vehicle (RPV)", comment: "Military Entity Type")
                
            case .verticalTakeoffUAVVT_UAV:
                String(localized: "Vertical-Takeoff UAV (VT-UAV)", comment: "Military Entity Type")
                
            case .lighterThanAir:
                String(localized: "Lighter Than Air", comment: "Military Entity Type")
                
            case .airship:
                String(localized: "Airship", comment: "Military Entity Type")
                
            case .tetheredLighterThanAir:
                String(localized: "Tethered Lighter Than Air", comment: "Military Entity Type")
            }
        }
        
        var subtypes: [AnyEntitySubtype] {
            switch self {
            case .none:
                [.none]
            case .fixedWing:
                FixedWingEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .rotaryWing:
                [.none]
            case .unmannedAircraftUA_UAV_UAS_RPV:
                [.none]
            case .verticalTakeoffUAVVT_UAV:
                [.none]
            case .lighterThanAir:
                [.none]
            case .airship:
                [.none]
            case .tetheredLighterThanAir:
                [.none]
            }
        }
    }
}
