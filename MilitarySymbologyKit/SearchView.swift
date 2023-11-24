//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    @Binding var selectedSymbol: MilitarySymbol
    
    //    @State private var selectedIdentity: StandardIdentity = .unknown
    
    var body: some View {
        ForEach(MilitarySymbol.search(text: searchText)) { symbol in
            Button {
                selectedSymbol = symbol
            } label: {
                LabeledContent {
                    Text(symbol.dimention.name)
                } label: {
                    symbol.makeFrame()
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 60)
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
