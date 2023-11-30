//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import SwiftUI

struct MilitarySymbolSearchResults: View {
    @Binding var searchText: String
    @Binding var selectedSymbol: MilitarySymbol
    let searchResults: [MilitarySymbol]
    
    init(searchText: Binding<String>, selectedSymbol: Binding<MilitarySymbol>, searchResults: [MilitarySymbol]) {
        self._searchText = searchText
        self._selectedSymbol = selectedSymbol
        self.searchResults = searchResults
    }
    
    var body: some View {
        if !searchText.isEmpty {
            ForEach(searchResults) { symbol in
                Button {
                    selectedSymbol = symbol
                    searchText = ""
                } label: {
                    LabeledContent {
                        HStack {
                            
//                            let isSearchTextMatchingEntity = symbol.entity.name.localizedStandardContains(searchText)
//                            let isSearchTextMatchingEntityType = symbol.entityType.name.localizedStandardContains(searchText)
//                            
//                            
//                            if isSearchTextMatchingEntity {
//                                Text(symbol.entity.name)
//                            }
//                            
//                            if isSearchTextMatchingEntityType {
//                                if isSearchTextMatchingEntity {
//                                    Text(verbatim: " - ")
//                                }
//                                Text(symbol.entityType.name)
//                            }
//                            
//                            if symbol.entitySubtype != .none {
//                                if isSearchTextMatchingEntityType {
//                                    Text(verbatim: " - ")
//                                }
//                                Text(symbol.entitySubtype.name)
//                            }
                            
                            
                            if symbol.entityType != .none {
                                Text(symbol.entityType.name)
                            }
                            
                            if symbol.entitySubtype != .none {
                                Text(verbatim: " - ")
                                Text(symbol.entitySubtype.name)
                            }
                        }
                        .lineLimit(1)
                        .minimumScaleFactor(0.8)
                    } label: {
                        symbol.makeView(frameWidth: 50)
                    }
                }
            }
        }
    }
}

private struct PreviewWprapper: View {
    @State private var text = ""
    @State private var symbol = MilitarySymbol()
    @State private var searchResults: [MilitarySymbol] = []
    
    var body: some View {
        Form {
            MilitarySymbolSearchResults(searchText: $text, selectedSymbol: $symbol, searchResults: searchResults)
        }
        .searchable(text: $text, isPresented: .constant(true))
        .onChange(of: text) { _, newValue in
            searchResults = MilitarySymbol.searched(text: newValue, currentSymbol: symbol)
        }
    }
}

#Preview {
    NavigationStack {
        PreviewWprapper()
    }
}
