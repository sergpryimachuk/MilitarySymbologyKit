//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

protocol Descriptor: Identifiable {
    var id: String { get }
    var name: String { get }
}

struct AnyDescriptor: Descriptor, Hashable, Identifiable {
    var id: String
    var name: String
}

extension AnyDescriptor {
    init<T: Descriptor>(_ descriptor: T) {
        id = descriptor.id
        name = descriptor.name
    }
}

extension AnyDescriptor {
    static let none = AnyDescriptor(id: "0", name: String(localized: "None"))
}
