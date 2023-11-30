//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

enum ArmoredVehicleEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case armoredFightingVehicle = "01"
    case armoredFightingVehicleCommandAndControl = "02"
    case armoredPersonnelCarrier = "03"
    case armoredPersonnelCarrierAmbulance = "04"
    case armoredProtectedVehicle = "05"
    case armoredProtectedVehicleRecovery = "06"
    case armoredProtectedVehicleMedicalEvacuation = "07"
    case armoredPersonnelCarrierRecovery = "08"
    case combatServiceSupportVehicle = "09"
    case lightWheeledArmoredVehicle = "10"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module, comment: "Armored Vehicle Entity Subtype")

        case .armoredFightingVehicle:
            String(localized: "Armored Fighting Vehicle", bundle: .module, comment: "Armored Vehicle Entity Subtype")

        case .armoredFightingVehicleCommandAndControl:
            String(localized: "Armored Fighting Vehicle Command and Control", bundle: .module, comment: "Armored Vehicle Entity Subtype")

        case .armoredPersonnelCarrier:
            String(localized: "Armored Personnel Carrier", bundle: .module, comment: "Armored Vehicle Entity Subtype")

        case .armoredPersonnelCarrierAmbulance:
            String(localized: "Armored Personnel Carrier Ambulance", bundle: .module, comment: "Armored Vehicle Entity Subtype")

        case .armoredProtectedVehicle:
            String(localized: "Armored Protected Vehicle", bundle: .module, comment: "Armored Vehicle Entity Subtype")

        case .armoredProtectedVehicleRecovery:
            String(localized: "Armored Protected Vehicle Recovery", bundle: .module, comment: "Armored Vehicle Entity Subtype")

        case .armoredProtectedVehicleMedicalEvacuation:
            String(localized: "Armored Protected Vehicle Medical Evacuation", bundle: .module, comment: "Armored Vehicle Entity Subtype")

        case .armoredPersonnelCarrierRecovery:
            String(localized: "Armored Personnel Carrier Recovery", bundle: .module, comment: "Armored Vehicle Entity Subtype")

        case .combatServiceSupportVehicle:
            String(localized: "Combat Service Support Vehicle", bundle: .module, comment: "Armored Vehicle Entity Subtype")

        case .lightWheeledArmoredVehicle:
            String(localized: "Light Wheeled Armored Vehicle", bundle: .module, comment: "Armored Vehicle Entity Subtype")
        }
    }
}
