//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

public protocol EntityType: Identifiable {
    var id: String { get }
    var name: String { get }
    var subtypes: [AnyEntitySubtype] { get }
}

public struct AnyEntityType: EntityType, Hashable, Identifiable {
    public var id: String
    public var name: String
    public var subtypes: [AnyEntitySubtype]
}

public extension AnyEntityType {
    init<T: EntityType>(_ entityType: T) {
        id = entityType.id
        name = entityType.name
        subtypes = entityType.subtypes
    }
}

public extension AnyEntityType {
    static let none = AnyEntityType(
        id: "00",
        name: String(localized: "None", bundle: .module),
        subtypes: [.none]
    )
}
