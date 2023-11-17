//
//  Created with ♥ by Serhii Pryimachuk on 15.11.2023.
//  

import Foundation

protocol Entity: Identifiable {
    var id: String { get }
    var name: String { get }
}

struct AnyEntity: Entity, Hashable, Identifiable {
    var id: String
    var name: String
    
    init<T: Entity>(_ descriptor: T) {
        self.id = descriptor.id
        self.name = descriptor.name
    }
    
    init(id: String, name: String.LocalizationValue) {
        let string = String(localized: name, comment: "Any entity")
        self.id = id
        self.name = string
    }
}
