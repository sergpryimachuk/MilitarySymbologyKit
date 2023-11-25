//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//  

import Foundation

protocol EntityType: Identifiable {
    var id: String { get }
    var name: String { get }
}

struct AnyEntityType: EntityType, Hashable, Identifiable {
    var id: String
    var name: String
}

extension AnyEntityType {
    init<T: EntityType>(_ entityType: T) {
        self.id = entityType.id
        self.name = entityType.name
    }
}

extension AnyEntityType {
    static let none: AnyEntityType = AnyEntityType(id: "00", 
                                                    name: String(localized: "None"))
}
