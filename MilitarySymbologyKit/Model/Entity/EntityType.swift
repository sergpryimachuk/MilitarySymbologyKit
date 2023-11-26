//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//  

import Foundation

protocol EntityType: Identifiable {
    var id: String { get }
    var name: String { get }
    var subtypes: [AnyEntitySubtype] { get }
}

struct AnyEntityType: EntityType, Hashable, Identifiable {
    var id: String
    var name: String
    var subtypes: [AnyEntitySubtype]
}

extension AnyEntityType {
    init<T: EntityType>(_ entityType: T) {
        self.id = entityType.id
        self.name = entityType.name
        self.subtypes = entityType.subtypes
    }
}

extension AnyEntityType {
    static let none: AnyEntityType = AnyEntityType(id: "00", 
                                                   name: String(localized: "None"),
                                                   subtypes: [.none])
}
