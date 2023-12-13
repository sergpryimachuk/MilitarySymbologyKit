//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//

import Foundation

public protocol EntitySubtype: Identifiable {
    var id: String { get }
    var name: String { get }
}

public struct AnyEntitySubtype: EntitySubtype, Hashable, Identifiable {
    public var id: String
    public var name: String
}

public extension AnyEntitySubtype {
    init<T: EntitySubtype>(_ entityType: T) {
        id = entityType.id
        name = entityType.name
    }
}

public extension AnyEntitySubtype {
    static let none = AnyEntitySubtype(
        id: "00",
        name: String(localized: "None", bundle: .module)
    )
}
