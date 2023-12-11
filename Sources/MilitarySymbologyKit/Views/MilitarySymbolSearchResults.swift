//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import SwiftUI

public struct MilitarySymbolSearchResults: View {
    @Binding public var searchText: String
    @Binding public var selectedSymbol: MilitarySymbol
    @Binding public var isSearchPresented: Bool
    
    private var searchResults: [MilitarySymbol]
    
    public init(
        searchText: Binding<String>,
        selectedSymbol: Binding<MilitarySymbol>,
        isSearchPresented: Binding<Bool>,
        searchResults: [MilitarySymbol]
    ) {
        self._searchText = searchText
        self._selectedSymbol = selectedSymbol
        self._isSearchPresented = isSearchPresented
        self.searchResults = searchResults
    }
    
    public var body: some View {
        if !searchText.isEmpty && !searchResults.isEmpty {
            MilitarySymbolForEach(for: searchResults) { selectedSymbol in
                self.selectedSymbol = selectedSymbol
                searchText = ""
                isSearchPresented = false
            }
        } else if !searchText.isEmpty && searchResults.isEmpty {
            let comment: StaticString = "Symbol search"
            ContentUnavailableView(label: {
                Label(
                    title: {
                        Text("Not found", bundle: .module, comment: comment)
                    },
                    icon: {
                        Image(systemName: "questionmark.diamond")
                    }
                )
            }, description: {
                Text("No results for '\(searchText)'", bundle: .module, comment: comment)
            })
        }
    }
}

private struct PreviewWprapper: View {
    @State private var text = ""
    @State private var symbol = MilitarySymbol()
    @State private var isSearchPresented = false
    
    var searchResults: [MilitarySymbol] {
        .allEntityCases(initialValue: symbol).filtered(searchText: text)
    }
    
    public var body: some View {
        List {
            MilitarySymbolSearchResults(searchText: $text,
                                        selectedSymbol: $symbol,
                                        isSearchPresented: $isSearchPresented,
                                        searchResults: searchResults)
        }
        .searchable(text: $text, isPresented: .constant(true))
    }
}

#Preview {
    NavigationStack {
        PreviewWprapper()
    }
}
