//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//

import Foundation

protocol EntitySubtype: Identifiable {
    var id: String { get }
    var name: String { get }
}

struct AnyEntitySubtype: EntitySubtype, Hashable, Identifiable {
    var id: String
    var name: String
}

extension AnyEntitySubtype {
    init<T: EntitySubtype>(_ entityType: T) {
        self.id = entityType.id
        self.name = entityType.name
    }
}

extension AnyEntitySubtype {
    static let none: AnyEntitySubtype = AnyEntitySubtype(id: "00",
                                                         name: String(localized: "None"))
}
