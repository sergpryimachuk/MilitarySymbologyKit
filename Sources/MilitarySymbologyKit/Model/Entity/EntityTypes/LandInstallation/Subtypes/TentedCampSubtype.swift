//
//  TentedCampSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

public enum TentedCampSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case displacedPersonsRefugeeEvacueesCamp = "01"
    case trainingCamp = "02"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)
        case .displacedPersonsRefugeeEvacueesCamp:
            String(localized: "Displaced Persons / Refugee / Evacuees Camp", bundle: .module, comment: "Tented Camp Subtype")
        case .trainingCamp:
            String(localized: "Training Camp", bundle: .module, comment: "Tented Camp Subtype")
        }
    }
}
