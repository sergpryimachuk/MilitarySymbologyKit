//
//  Created with ♥ by Serhii Pryimachuk on 11.12.2023.
//

import Foundation

public extension [MilitarySymbol] {
    /// Generates symbols with all cases of entities, its types and subtypes.
    /// Used for search.
    
    static func allEntityCases2(
        initialValue: MilitarySymbol = MilitarySymbol()
    ) -> [MilitarySymbol] {
        Dimension.allCases.reduce(into: [MilitarySymbol]()) { symbols, dimension in
            dimension.entities.forEach { entity in
                entity.types.forEach { entityType in
                    entityType.subtypes.forEach { entitySubtype in
                        symbols.append(
                            MilitarySymbol(
                                context: initialValue.context,
                                standardIdentity: initialValue.standardIdentity,
                                dimension: dimension,
                                status: initialValue.status,
                                hqtfd: initialValue.hqtfd,
                                amplifier: initialValue.amplifier,
                                descriptor: initialValue.descriptor,
                                entity: entity,
                                entityType: entityType,
                                entitySubtype: entitySubtype
                            )
                        )
                    }
                }
            }
        }
    }
    
    static func allEntityCases(
        initialValue: MilitarySymbol
    ) -> [MilitarySymbol] {
        var result: [MilitarySymbol] = []
        
        Dimension.allCases.forEach { dimension in
            dimension.entities.forEach { entity in
                entity.types.forEach { entityType in
                    entityType.subtypes.forEach { entitySubtype in
                        result.append(
                            MilitarySymbol(
                                context: initialValue.context,
                                standardIdentity: initialValue.standardIdentity,
                                dimension: dimension,
                                status: initialValue.status,
                                hqtfd: initialValue.hqtfd,
                                amplifier: initialValue.amplifier,
                                descriptor: initialValue.descriptor,
                                entity: entity,
                                entityType: entityType,
                                entitySubtype: entitySubtype
                            )
                        )
                    }
                }
            }
        }
        
        return result
    }
    
    /// Filters self accoring to search text.
    /// Filters by dimension, entity, enitityType and subtype.
    func filtered(searchText: String) -> [MilitarySymbol] {
        if self.isEmpty {
            self
        } else {
            if searchText.isEmpty {
                self
            } else {
                self.filter { symbol in
                    symbol.dimension.name.localizedCaseInsensitiveContains(searchText)
                    || symbol.entity.name.localizedCaseInsensitiveContains(searchText)
                    || symbol.entityType.name.localizedCaseInsensitiveContains(searchText)
                    || symbol.entitySubtype.name.localizedCaseInsensitiveContains(searchText)
                }
            }
        }
    }
}
