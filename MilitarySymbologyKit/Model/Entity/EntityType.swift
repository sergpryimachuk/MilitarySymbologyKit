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
        id = entityType.id
        name = entityType.name
        subtypes = entityType.subtypes
    }
}

extension AnyEntityType {
    static let none: AnyEntityType = .init(id: "00",
                                           name: String(localized: "None"),
                                           subtypes: [.none])
}
