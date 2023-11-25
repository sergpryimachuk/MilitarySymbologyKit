//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//  

import Foundation

extension StringProtocol {
    subscript(offset: Int) -> String {
        String(self[index(startIndex, offsetBy: offset)])
    }
}
