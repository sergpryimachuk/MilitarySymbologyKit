//
//  Created with ♥ by Serhii Pryimachuk on 11.12.2023.
//

import Foundation

public extension [MilitarySymbol] {
    
    /// Generates symbols with all cases of entities, its types and subtypes.
    /// Used for search.
    static func allEntityCases(
        initialValue: MilitarySymbol
    ) -> [MilitarySymbol] {
        
        var result: [MilitarySymbol] = []
        
        Dimension.allCases.forEach { dimention in
            dimention.entities.forEach { entity in
                entity.types.forEach { entityType in
                    entityType.subtypes.forEach { entitySubtype in
                        result.append(MilitarySymbol(
                            context: initialValue.context,
                            standardIdentity: initialValue.standardIdentity,
                            dimention: dimention,
                            status: initialValue.status,
                            hqtfd: initialValue.hqtfd,
                            amplifier: initialValue.amplifier,
                            descriptor: initialValue.descriptor,
                            entity: entity,
                            entityType: entityType,
                            entitySubtype: entitySubtype)
                        )
                    }
                }
            }
        }
        
        return result
    }
    
    func filtered(searchText: String) -> [MilitarySymbol] {
        if self.isEmpty {
            self
        } else {
            if searchText.isEmpty {
                self
            } else {
                self.filter { symbol in
                    symbol.dimention.name.localizedCaseInsensitiveContains(searchText)
                    || symbol.entity.name.localizedCaseInsensitiveContains(searchText)
                    || symbol.entityType.name.localizedCaseInsensitiveContains(searchText)
                    || symbol.entitySubtype.name.localizedCaseInsensitiveContains(searchText)
                }
            }
        }
    }
}
