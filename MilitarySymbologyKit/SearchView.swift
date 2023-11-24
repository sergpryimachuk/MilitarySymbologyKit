//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    @Binding var selectedSymbol: MilitarySymbol
    
    //    @State private var selectedIdentity: StandardIdentity = .unknown
    
    var body: some View {
        ForEach(MilitarySymbol.searched(text: searchText, standartIdentity: selectedSymbol.standartIdentity)) { symbol in
            Button {
                selectedSymbol = symbol
                searchText = ""
            } label: {
                LabeledContent {
                    Text("\(symbol.dimention.name) - \(symbol.entity.name)")
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
            SearchView(searchText: $text, selectedSymbol: $symbol)
        }
        .searchable(text: $text, isPresented: .constant(true))
    }
}

#Preview {
    NavigationStack {
        PreviewWprapper()
    }
}
