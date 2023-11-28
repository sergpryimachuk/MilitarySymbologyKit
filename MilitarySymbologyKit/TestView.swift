//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import SwiftUI

struct TestView: View {
    @State private var codes = ["01062000121211000000", "01051000121215000000", "01061000001211000000"]
    @State private var text: String = ""

    var isTextValid: Bool {
        text.count == 20
    }

    @State private var path = NavigationPath()

    var body: some View {
        NavigationStack {
            List {
                TextField("Add symbol", text: $text)
                    .onSubmit {
                        if isTextValid {
                            codes.append(text)
                            text = ""
                        }
                    }

                ForEach(codes, id: \.self) { code in
                    if let symbol = makeSymbol(for: code) {
                        NavigationLink(value: symbol) {
                           LabeledContent {
                               Text(symbol.makeSIDC())
                           } label: {
                               symbol.makeView(frameWidth: 60)
                           }
                       }
                    } else {
                        Text("\(code) is broken.")
                    }
                }
            }
            .navigationDestination(for: MilitarySymbol.self) { symbol in
                MilitarySymbolPicker(symbol: symbol)
            }
        }
    }
    
    
    func makeSymbol(for code: String) -> MilitarySymbol? {
        do {
            let symbol = try MilitarySymbol(sidc: code)
            return symbol
        } catch {
            print(error)
            return nil
        }
    }
}

#Preview {
    TestView()
}
