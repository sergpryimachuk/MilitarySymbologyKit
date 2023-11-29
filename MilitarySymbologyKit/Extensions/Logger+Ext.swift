//
//  Created with ♥ by Serhii Pryimachuk on 29.11.2023.
//  

import OSLog
import Foundation

extension Logger {
    static let subsystem = "MilitarySymbologyKit"
    static let militarySymbol = Logger(subsystem: subsystem, category: "Military Symbol")
}
