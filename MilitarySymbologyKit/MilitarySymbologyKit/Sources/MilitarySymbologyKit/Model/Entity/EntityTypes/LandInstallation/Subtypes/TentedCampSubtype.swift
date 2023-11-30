//
//  TentedCampSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

enum TentedCampSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case displacedPersonsRefugeeEvacueesCamp = "01"
    case trainingCamp = "02"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
        case .displacedPersonsRefugeeEvacueesCamp:
            return String(localized: "Displaced Persons / Refugee / Evacuees Camp", comment: "Tented Camp Subtype")
        case .trainingCamp:
            return String(localized: "Training Camp", comment: "Tented Camp Subtype")
        }
    }
}