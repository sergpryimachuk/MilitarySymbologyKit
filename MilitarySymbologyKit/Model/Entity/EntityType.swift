//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//  

import Foundation

protocol EntityType: Identifiable {
    var id: String { get }
    var name: String { get }
}

struct AnyEntityType: Descriptor, Hashable, Identifiable {
    var id: String
    var name: String
    
    init<T: Descriptor>(_ descriptor: T) {
        self.id = descriptor.id
        self.name = descriptor.name
    }
}
