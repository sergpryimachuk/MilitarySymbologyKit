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
            return String(localized: "None", comment: "Armored Vehicle Entity Subtype")
            
        case .armoredFightingVehicle:
            return String(localized: "Armored Fighting Vehicle", comment: "Armored Vehicle Entity Subtype")
            
        case .armoredFightingVehicleCommandAndControl:
            return String(localized: "Armored Fighting Vehicle Command and Control", comment: "Armored Vehicle Entity Subtype")
            
        case .armoredPersonnelCarrier:
            return String(localized: "Armored Personnel Carrier", comment: "Armored Vehicle Entity Subtype")
            
        case .armoredPersonnelCarrierAmbulance:
            return String(localized: "Armored Personnel Carrier Ambulance", comment: "Armored Vehicle Entity Subtype")
            
        case .armoredProtectedVehicle:
            return String(localized: "Armored Protected Vehicle", comment: "Armored Vehicle Entity Subtype")
            
        case .armoredProtectedVehicleRecovery:
            return String(localized: "Armored Protected Vehicle Recovery", comment: "Armored Vehicle Entity Subtype")
            
        case .armoredProtectedVehicleMedicalEvacuation:
            return String(localized: "Armored Protected Vehicle Medical Evacuation", comment: "Armored Vehicle Entity Subtype")
            
        case .armoredPersonnelCarrierRecovery:
            return String(localized: "Armored Personnel Carrier Recovery", comment: "Armored Vehicle Entity Subtype")
            
        case .combatServiceSupportVehicle:
            return String(localized: "Combat Service Support Vehicle", comment: "Armored Vehicle Entity Subtype")
            
        case .lightWheeledArmoredVehicle:
            return String(localized: "Light Wheeled Armored Vehicle", comment: "Armored Vehicle Entity Subtype")
        }
    }
}
