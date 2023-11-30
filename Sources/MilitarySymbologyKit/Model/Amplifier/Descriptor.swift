//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

public protocol Descriptor: Identifiable {
    var id: String { get }
    var name: String { get }
}

public struct AnyDescriptor: Descriptor, Hashable, Identifiable {
    public var id: String
    public var name: String
}

public extension AnyDescriptor {
    init<T: Descriptor>(_ descriptor: T) {
        id = descriptor.id
        name = descriptor.name
    }
}

public extension AnyDescriptor {
    static let none = AnyDescriptor(id: "0", name: String(localized: "None"))
}
