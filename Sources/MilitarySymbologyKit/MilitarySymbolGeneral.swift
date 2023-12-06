//
//  SwiftUIView.swift
//  
//
//  Created by Ярослав Шерстюк on 06/12/2023.
//

import SwiftUI

enum SymbolSelectorType: Int, CaseIterable, Identifiable {
    case constructor
    case shearch
    case favorite
    
    var id: Int { rawValue }

    var name: String {
        switch self {
        case .constructor: "Constructor"
        case .shearch: "Shearch"
        case .favorite: "Favorite"
        }
    }
}

struct MilitarySymbolGeneral: View {
    
    @State private var selectorType: SymbolSelectorType = .constructor
    
    var body: some View {
        NavigationStack {
            VStack {
                Picker(selection: $selectorType, label: Text("Coordinate system")) {
                    ForEach(SymbolSelectorType.allCases) {
                        Text($0.name).tag($0)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
                
                switch selectorType {
                case .constructor:
                    MilitarySymbolSelector(symbol: .constant(.init()))
                case .shearch:
                    Text("In Developer")
                case .favorite:
                    Text("In Developer")
                }
                Spacer()
            }
            .navigationTitle("APP6")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    MilitarySymbolGeneral()
}
