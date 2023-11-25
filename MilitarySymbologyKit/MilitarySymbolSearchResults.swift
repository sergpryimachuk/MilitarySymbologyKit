//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import SwiftUI

struct MilitarySymbolSearchResults: View {
    
    @Binding var searchText: String
    @Binding var selectedSymbol: MilitarySymbol
    
    //    @State private var selectedIdentity: StandardIdentity = .unknown
    
    var body: some View {
        ForEach(MilitarySymbol.searched(text: searchText, standardIdentity: selectedSymbol.standardIdentity)) { symbol in
            Button {
                selectedSymbol = symbol
                searchText = ""
            } label: {
                LabeledContent {
                    Text("\(symbol.entity.name) - \(symbol.entityType.name)")
                } label: {
                    symbol.makeView(frameWidth: 50)
                }
            }
        }
    }
}

fileprivate struct PreviewWprapper: View {
    
    @State private var text = ""
    @State private var symbol = MilitarySymbol()
    
    var body: some View {
        Form {
            MilitarySymbolSearchResults(searchText: $text, selectedSymbol: $symbol)
        }
        .searchable(text: $text, isPresented: .constant(true))
    }
}

#Preview {
    NavigationStack {
        PreviewWprapper()
    }
}
