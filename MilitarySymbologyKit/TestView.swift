//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import SwiftUI

struct TestView: View {
    
    @State private var symbol = MilitarySymbol()
    var body: some View {
        if let symbol = MilitarySymbol(sidc: "01051000121215000000") {
            ContentView(symbol: symbol)
        } else {
            ContentView()
        }
    }
}

#Preview {
    TestView()
}
