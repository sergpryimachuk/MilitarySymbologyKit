//
//  Created with ♥ by Serhii Pryimachuk on 15.11.2023.
//

import Foundation

public protocol Entity: Identifiable {
    var id: String { get }
    var name: String { get }
    var types: [AnyEntityType] { get }
}

public struct AnyEntity: Entity, Hashable, Identifiable {
    public var id: String
    public var name: String
    public var types: [AnyEntityType]
}

public extension AnyEntity {
    init<T: Entity>(_ entity: T) {
        id = entity.id
        name = entity.name
        types = entity.types
    }
}

public extension AnyEntity {
    static let none = AnyEntity(
        id: "00", name: String(localized: "None", bundle: .module),
        types: [.none]
    )
}
