//
//  Created with ♥ by Serhii Pryimachuk on 04.12.2023.
//  

import SwiftUI

public struct MilitarySymbolSelector: View {
    
    @Binding public var symbol: MilitarySymbol
    
    public var body: some View {
        List {
            Section {
                NavigationLink {
                    
                } label: {
                    
                }

            } header: {
                Text("Context")
            }
        }
    }
}

#Preview {
    MilitarySymbolSelector(symbol: .constant(.init()))
}
