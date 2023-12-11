//
//  Created with ♥ by Serhii Pryimachuk on 11.12.2023.
//

import SwiftUI

public struct MilitarySymbolSearch: View {
    
    @Binding public var selectedSymbol: MilitarySymbol
    
    public init(selectedSymbol: Binding<MilitarySymbol>) {
        self._selectedSymbol = selectedSymbol
        self.allSymbols = .allEntityCases(initialValue: selectedSymbol.wrappedValue)
    }
    
    @State private var searchText: String = ""
    @State private var isSearchPresented: Bool = true
    
    let allSymbols: [MilitarySymbol]
    
    private var filteredSymbols: [MilitarySymbol] {
        allSymbols.filtered(searchText: searchText)
    }
    
    public var body: some View {
        List {
            if searchText.isEmpty {
                MilitarySymbolForEach(for: allSymbols) { selectedSymbol in
                    self.selectedSymbol = selectedSymbol
                }
            } else {
               MilitarySymbolSearchResults(
                searchText: $searchText,
                selectedSymbol: $selectedSymbol,
                isSearchPresented: $isSearchPresented,
                searchResults: filteredSymbols
               )
            }
        }
        .animation(.linear, value: filteredSymbols)
        .searchable(
            text: $searchText,
            isPresented: $isSearchPresented,
            placement: .toolbar,
            prompt: Text("Search symbol", bundle: .militarySymbologyKit, comment: "Search bar")
        )
    }
}

fileprivate struct PreviewWrapper: View {
    @State private var symbol = MilitarySymbol()
    var body: some View {
        NavigationStack {
            MilitarySymbolSearch(selectedSymbol: $symbol)
        }
    }
}

#Preview {
    PreviewWrapper()
}
