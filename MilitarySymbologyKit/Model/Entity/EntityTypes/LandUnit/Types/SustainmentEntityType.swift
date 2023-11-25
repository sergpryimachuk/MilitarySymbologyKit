//
//  Created with ♥ by Serhii Pryimachuk on 17.11.2023.
//  

import Foundation

enum SustainmentEntityType: String, CaseIterable, Identifiable, EntityType {
    case administrative = "01"
    case allClassesOfSupply = "02"
    case airportOfDebarkationEmbarkation = "03"
    case ammunition = "04"
    case band = "05"
    case combatServiceSupport = "06"
    case finance = "07"
    case judgeAdvocateGeneral = "08"
    case labor = "09"
    case laundryBath = "10"
    case maintenance = "11"
    case material = "12"
    case medical = "13"
    case medicalTreatmentFacility = "14"
    case moraleWelfareRecreation = "15"
    case mortuaryAffairsGravesRegistration = "16"
    case multipleClassesOfSupply = "17"
    case natoSupplyClassI = "18"
    case natoSupplyClassI1 = "19"
    case natoSupplyClassIII = "20"
    case natoSupplyClassIV = "21"
    case natoSupplyClassV = "22"
    case ordnance = "23"
    case personnelServices = "24"
    case petroleumOilAndLubricants = "25"
    case pipeline = "26"
    case postal = "27"
    case publicAffairsPublicInformation = "28"
    case quartermaster = "29"
    case railhead = "30"
    case religiousSupport = "31"
    case replacementHoldingUnit = "32"
    case seaPortOfDebarkationEmbarkation = "33"
    case supply = "34"
    case jointInformationBureau = "35"
    case transportation = "36"
    case usSupplyClassI = "37"
    case usSupplyClassII = "38"
    case usSupplyClassIII = "39"
    case usSupplyClassIV = "40"
    case usSupplyClassV = "41"
    case usSupplyClassVI = "42"
    case usSupplyClassVII = "43"
    case usSupplyClassVIII = "44"
    case usSupplyClassIX = "45"
    case usSupplyClassX = "46"
    case water = "47"
    case waterPurification = "48"
    case broadcast = "49"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .administrative:
            return String(localized: "Administrative", comment: "Sustainment Entity Type")
            
        case .allClassesOfSupply:
            return String(localized: "All Classes of Supply", comment: "Sustainment Entity Type")
            
        case .airportOfDebarkationEmbarkation:
            return String(localized: "Airport of Debarkation/Airport of Embarkation", comment: "Sustainment Entity Type")
            
        case .ammunition:
            return String(localized: "Ammunition", comment: "Sustainment Entity Type")
            
        case .band:
            return String(localized: "Band", comment: "Sustainment Entity Type")
            
        case .combatServiceSupport:
            return String(localized: "Combat Service Support", comment: "Sustainment Entity Type")
            
        case .finance:
            return String(localized: "Finance", comment: "Sustainment Entity Type")
            
        case .judgeAdvocateGeneral:
            return String(localized: "Judge Advocate General", comment: "Sustainment Entity Type")
            
        case .labor:
            return String(localized: "Labor", comment: "Sustainment Entity Type")
            
        case .laundryBath:
            return String(localized: "Laundry/Bath", comment: "Sustainment Entity Type")
            
        case .maintenance:
            return String(localized: "Maintenance", comment: "Sustainment Entity Type")
            
        case .material:
            return String(localized: "Material", comment: "Sustainment Entity Type")
            
        case .medical:
            return String(localized: "Medical", comment: "Sustainment Entity Type")
            
        case .medicalTreatmentFacility:
            return String(localized: "Medical Treatment Facility", comment: "Sustainment Entity Type")
            
        case .moraleWelfareRecreation:
            return String(localized: "Morale Welfare and Recreation", comment: "Sustainment Entity Type")
            
        case .mortuaryAffairsGravesRegistration:
            return String(localized: "Mortuary Affairs/Graves Registration", comment: "Sustainment Entity Type")
            
        case .multipleClassesOfSupply:
            return String(localized: "Multiple Classes of Supply", comment: "Sustainment Entity Type")
            
        case .natoSupplyClassI:
            return String(localized: "NATO Supply Class I", comment: "Sustainment Entity Type")
            
        case .natoSupplyClassI1:
            return String(localized: "NATO Supply Class I|", comment: "Sustainment Entity Type")
            
        case .natoSupplyClassIII:
            return String(localized: "NATO Supply Class III", comment: "Sustainment Entity Type")
            
        case .natoSupplyClassIV:
            return String(localized: "NATO Supply Class IV", comment: "Sustainment Entity Type")
            
        case .natoSupplyClassV:
            return String(localized: "NATO Supply Class V", comment: "Sustainment Entity Type")
            
        case .ordnance:
            return String(localized: "Ordnance", comment: "Sustainment Entity Type")
            
        case .personnelServices:
            return String(localized: "Personnel Services", comment: "Sustainment Entity Type")
            
        case .petroleumOilAndLubricants:
            return String(localized: "Petroleum Oil and Lubricants", comment: "Sustainment Entity Type")
            
        case .pipeline:
            return String(localized: "Pipeline", comment: "Sustainment Entity Type")
            
        case .postal:
            return String(localized: "Postal", comment: "Sustainment Entity Type")
            
        case .publicAffairsPublicInformation:
            return String(localized: "Public Affairs/Public Information", comment: "Sustainment Entity Type")
            
        case .quartermaster:
            return String(localized: "Quartermaster", comment: "Sustainment Entity Type")
            
        case .railhead:
            return String(localized: "Railhead", comment: "Sustainment Entity Type")
            
        case .religiousSupport:
            return String(localized: "Religious Support", comment: "Sustainment Entity Type")
            
        case .replacementHoldingUnit:
            return String(localized: "Replacement Holding Unit", comment: "Sustainment Entity Type")
            
        case .seaPortOfDebarkationEmbarkation:
            return String(localized: "Sea Port of Debarkation/Sea Port of Embarkation", comment: "Sustainment Entity Type")
            
        case .supply:
            return String(localized: "Supply", comment: "Sustainment Entity Type")
            
        case .jointInformationBureau:
            return String(localized: "Joint Information Bureau", comment: "Sustainment Entity Type")
            
        case .transportation:
            return String(localized: "Transportation", comment: "Sustainment Entity Type")
            
        case .usSupplyClassI:
            return String(localized: "US Supply Class I", comment: "Sustainment Entity Type")
            
        case .usSupplyClassII:
            return String(localized: "US Supply Class II", comment: "Sustainment Entity Type")
            
        case .usSupplyClassIII:
            return String(localized: "US Supply Class III", comment: "Sustainment Entity Type")
            
        case .usSupplyClassIV:
            return String(localized: "US Supply Class IV", comment: "Sustainment Entity Type")
            
        case .usSupplyClassV:
            return String(localized: "US Supply Class V", comment: "Sustainment Entity Type")
            
        case .usSupplyClassVI:
            return String(localized: "US Supply Class VI", comment: "Sustainment Entity Type")
            
        case .usSupplyClassVII:
            return String(localized: "US Supply Class VII", comment: "Sustainment Entity Type")
            
        case .usSupplyClassVIII:
            return String(localized: "US Supply Class VIII", comment: "Sustainment Entity Type")
            
        case .usSupplyClassIX:
            return String(localized: "US Supply Class IX", comment: "Sustainment Entity Type")
            
        case .usSupplyClassX:
            return String(localized: "US Supply Class X", comment: "Sustainment Entity Type")
            
        case .water:
            return String(localized: "Water", comment: "Sustainment Entity Type")
            
        case .waterPurification:
            return String(localized: "Water Purification", comment: "Sustainment Entity Type")
            
        case .broadcast:
            return String(localized: "Broadcast", comment: "Sustainment Entity Type")
        }
    }
}
