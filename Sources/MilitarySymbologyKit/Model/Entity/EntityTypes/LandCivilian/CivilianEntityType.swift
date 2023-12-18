//
//  Created with ♥ by Serhii Pryimachuk on 18.12.2023.
//  

import Foundation

public extension LandCivilianEntity {
    enum CivilianEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case environmentalProtection = "01"
        case governmentOrganization = "02"
        case individual = "03"
        case organizationOrGroup = "04"
        case killingVictim = "05"
        case killingVictims = "06"
        case victimOfAnAttemptedCrime = "07"
        case spy = "08"
        case compositeLoss = "09"
        case emergencyMedicalOperation = "10"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                return String(localized: "None", bundle: .module)

            case .environmentalProtection:
                return String(localized: "Environmental Protection", bundle: .module, comment: "Land Civilian Entity Type")

            case .governmentOrganization:
                return String(localized: "Government Organization", bundle: .module, comment: "Land Civilian Entity Type")

            case .individual:
                return String(localized: "Individual", bundle: .module, comment: "Land Civilian Entity Type")

            case .organizationOrGroup:
                return String(localized: "Organization or Group", bundle: .module, comment: "Land Civilian Entity Type")

            case .killingVictim:
                return String(localized: "Killing Victim", bundle: .module, comment: "Land Civilian Entity Type")

            case .killingVictims:
                return String(localized: "Killing Victims", bundle: .module, comment: "Land Civilian Entity Type")

            case .victimOfAnAttemptedCrime:
                return String(localized: "Victim of an Attempted Crime", bundle: .module, comment: "Land Civilian Entity Type")

            case .spy:
                return String(localized: "Spy", bundle: .module, comment: "Land Civilian Entity Type")

            case .compositeLoss:
                return String(localized: "Composite Loss", bundle: .module, comment: "Land Civilian Entity Type")

            case .emergencyMedicalOperation:
                return String(localized: "Emergency Medical Operation", bundle: .module, comment: "Land Civilian Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}
