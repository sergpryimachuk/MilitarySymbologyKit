//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import SwiftUI

public struct MilitarySymbolSearchResults: View {
    @Binding public var searchText: String
    @Binding public var selectedSymbol: MilitarySymbol
    @Binding public var isSearchPresented: Bool
    @Binding public var searchResults: [MilitarySymbol]?

    public var body: some View {
        if let searchResults {
            if !searchText.isEmpty && !searchResults.isEmpty {
                ForEach(searchResults) { symbol in
                    
                    Button {
                        selectedSymbol = symbol
                        searchText = ""
                        self.searchResults = nil
                        isSearchPresented = false
                    } label: {
                        HStack(spacing: 12) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 8)
                                    .frame(width: 70, height: 70)
                                    .foregroundStyle(.gray.opacity(0.1))
                                
                                symbol.makeView(size: 100)
                                    .padding(-30)
                            }
                            Divider()
                            VStack(alignment: .leading) {
                                let isEntityTypeNotNone = symbol.entityType != .none
                                let isEntitySubtypeNotNone = symbol.entitySubtype != .none

                                if isEntityTypeNotNone {
                                    Text(symbol.entityType.name)
                                }
                                
                                if isEntitySubtypeNotNone {
                                    Text(symbol.entitySubtype.name)
                                }
                            }
                                .multilineTextAlignment(.leading)
                                .lineLimit(3)
                                .minimumScaleFactor(0.8)
                            
                        }
                    }.tint(.primary)
                    
                    
                }
            } else if !searchText.isEmpty && searchResults.isEmpty {
                ContentUnavailableView("Not found",
                                       systemImage: "questionmark.diamond",
                                       description: Text("No results for '\(searchText)'"))
            }
        }
    }
}

private struct PreviewWprapper: View {
    @State private var text = ""
    @State private var symbol = MilitarySymbol()
    @State private var isSearchPresented = false
    @State private var searchResults: [MilitarySymbol]?

    public var body: some View {
        Form {
            MilitarySymbolSearchResults(searchText: $text,
                                        selectedSymbol: $symbol,
                                        isSearchPresented: $isSearchPresented,
                                        searchResults: $searchResults)
        }
        .searchable(text: $text, isPresented: .constant(true))
    }
}

#Preview {
    NavigationStack {
        PreviewWprapper()
    }
}
