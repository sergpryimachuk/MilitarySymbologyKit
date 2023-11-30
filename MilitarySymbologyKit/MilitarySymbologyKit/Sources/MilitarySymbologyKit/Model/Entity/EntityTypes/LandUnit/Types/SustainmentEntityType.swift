//
//  Created with ♥ by Serhii Pryimachuk on 17.11.2023.
//

import Foundation

extension LandUnitEntity {
    enum SustainmentEntityType: String, CaseIterable, Identifiable, EntityType {
        case none = "00"
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
            case .none:
                String(localized: "None")
            case .administrative:
                String(localized: "Administrative", bundle: .module, comment: "Sustainment Entity Type")
                
            case .allClassesOfSupply:
                String(localized: "All Classes of Supply", bundle: .module, comment: "Sustainment Entity Type")
                
            case .airportOfDebarkationEmbarkation:
                String(localized: "Airport of Debarkation/Airport of Embarkation", bundle: .module, comment: "Sustainment Entity Type")
                
            case .ammunition:
                String(localized: "Ammunition", bundle: .module, comment: "Sustainment Entity Type")
                
            case .band:
                String(localized: "Band", bundle: .module, comment: "Sustainment Entity Type")
                
            case .combatServiceSupport:
                String(localized: "Combat Service Support", bundle: .module, comment: "Sustainment Entity Type")
                
            case .finance:
                String(localized: "Finance", bundle: .module, comment: "Sustainment Entity Type")
                
            case .judgeAdvocateGeneral:
                String(localized: "Judge Advocate General", bundle: .module, comment: "Sustainment Entity Type")
                
            case .labor:
                String(localized: "Labor", bundle: .module, comment: "Sustainment Entity Type")
                
            case .laundryBath:
                String(localized: "Laundry/Bath", bundle: .module, comment: "Sustainment Entity Type")
                
            case .maintenance:
                String(localized: "Maintenance", bundle: .module, comment: "Sustainment Entity Type")
                
            case .material:
                String(localized: "Material", bundle: .module, comment: "Sustainment Entity Type")
                
            case .medical:
                String(localized: "Medical", bundle: .module, comment: "Sustainment Entity Type")
                
            case .medicalTreatmentFacility:
                String(localized: "Medical Treatment Facility", bundle: .module, comment: "Sustainment Entity Type")
                
            case .moraleWelfareRecreation:
                String(localized: "Morale Welfare and Recreation", bundle: .module, comment: "Sustainment Entity Type")
                
            case .mortuaryAffairsGravesRegistration:
                String(localized: "Mortuary Affairs/Graves Registration", bundle: .module, comment: "Sustainment Entity Type")
                
            case .multipleClassesOfSupply:
                String(localized: "Multiple Classes of Supply", bundle: .module, comment: "Sustainment Entity Type")
                
            case .natoSupplyClassI:
                String(localized: "NATO Supply Class I", bundle: .module, comment: "Sustainment Entity Type")
                
            case .natoSupplyClassI1:
                String(localized: "NATO Supply Class I|", bundle: .module, comment: "Sustainment Entity Type")
                
            case .natoSupplyClassIII:
                String(localized: "NATO Supply Class III", bundle: .module, comment: "Sustainment Entity Type")
                
            case .natoSupplyClassIV:
                String(localized: "NATO Supply Class IV", bundle: .module, comment: "Sustainment Entity Type")
                
            case .natoSupplyClassV:
                String(localized: "NATO Supply Class V", bundle: .module, comment: "Sustainment Entity Type")
                
            case .ordnance:
                String(localized: "Ordnance", bundle: .module, comment: "Sustainment Entity Type")
                
            case .personnelServices:
                String(localized: "Personnel Services", bundle: .module, comment: "Sustainment Entity Type")
                
            case .petroleumOilAndLubricants:
                String(localized: "Petroleum Oil and Lubricants", bundle: .module, comment: "Sustainment Entity Type")
                
            case .pipeline:
                String(localized: "Pipeline", bundle: .module, comment: "Sustainment Entity Type")
                
            case .postal:
                String(localized: "Postal", bundle: .module, comment: "Sustainment Entity Type")
                
            case .publicAffairsPublicInformation:
                String(localized: "Public Affairs/Public Information", bundle: .module, comment: "Sustainment Entity Type")
                
            case .quartermaster:
                String(localized: "Quartermaster", bundle: .module, comment: "Sustainment Entity Type")
                
            case .railhead:
                String(localized: "Railhead", bundle: .module, comment: "Sustainment Entity Type")
                
            case .religiousSupport:
                String(localized: "Religious Support", bundle: .module, comment: "Sustainment Entity Type")
                
            case .replacementHoldingUnit:
                String(localized: "Replacement Holding Unit", bundle: .module, comment: "Sustainment Entity Type")
                
            case .seaPortOfDebarkationEmbarkation:
                String(localized: "Sea Port of Debarkation/Sea Port of Embarkation", bundle: .module, comment: "Sustainment Entity Type")
                
            case .supply:
                String(localized: "Supply", bundle: .module, comment: "Sustainment Entity Type")
                
            case .jointInformationBureau:
                String(localized: "Joint Information Bureau", bundle: .module, comment: "Sustainment Entity Type")
                
            case .transportation:
                String(localized: "Transportation", bundle: .module, comment: "Sustainment Entity Type")
                
            case .usSupplyClassI:
                String(localized: "US Supply Class I", bundle: .module, comment: "Sustainment Entity Type")
                
            case .usSupplyClassII:
                String(localized: "US Supply Class II", bundle: .module, comment: "Sustainment Entity Type")
                
            case .usSupplyClassIII:
                String(localized: "US Supply Class III", bundle: .module, comment: "Sustainment Entity Type")
                
            case .usSupplyClassIV:
                String(localized: "US Supply Class IV", bundle: .module, comment: "Sustainment Entity Type")
                
            case .usSupplyClassV:
                String(localized: "US Supply Class V", bundle: .module, comment: "Sustainment Entity Type")
                
            case .usSupplyClassVI:
                String(localized: "US Supply Class VI", bundle: .module, comment: "Sustainment Entity Type")
                
            case .usSupplyClassVII:
                String(localized: "US Supply Class VII", bundle: .module, comment: "Sustainment Entity Type")
                
            case .usSupplyClassVIII:
                String(localized: "US Supply Class VIII", bundle: .module, comment: "Sustainment Entity Type")
                
            case .usSupplyClassIX:
                String(localized: "US Supply Class IX", bundle: .module, comment: "Sustainment Entity Type")
                
            case .usSupplyClassX:
                String(localized: "US Supply Class X", bundle: .module, comment: "Sustainment Entity Type")
                
            case .water:
                String(localized: "Water", bundle: .module, comment: "Sustainment Entity Type")
                
            case .waterPurification:
                String(localized: "Water Purification", bundle: .module, comment: "Sustainment Entity Type")
                
            case .broadcast:
                String(localized: "Broadcast", bundle: .module, comment: "Sustainment Entity Type")
            }
        }
        
        var subtypes: [AnyEntitySubtype] {
            switch self {
            case .none:
                [.none]
            default:
                AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            }
        }
    }
}
