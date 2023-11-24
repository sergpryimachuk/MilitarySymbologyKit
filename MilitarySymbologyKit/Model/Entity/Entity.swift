//
//  Created with ♥ by Serhii Pryimachuk on 15.11.2023.
//  

import Foundation

protocol Entity: Identifiable {
    var id: String { get }
    var name: String { get }
    var types: [AnyEntityType] { get }
}

struct AnyEntity: Entity, Hashable, Identifiable {
    var id: String
    var name: String
    var types: [AnyEntityType]
}

extension AnyEntity {
    init<T: Entity>(_ descriptor: T) {
        self.id = descriptor.id
        self.name = descriptor.name
        self.types = descriptor.types
    }
}

extension AnyEntity {
    static let empty: AnyEntity = .init(id: "00", name: String(localized: "None"), types: [])
}
