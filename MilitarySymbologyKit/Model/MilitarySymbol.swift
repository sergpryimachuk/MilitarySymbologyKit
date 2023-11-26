//
//  Created with ♥ by Serhii Pryimachuk on 10.11.2023.
//

import Foundation
import SwiftUI

struct MilitarySymbol: Identifiable, Hashable {
    private let version: String = "01"
    var context: Context = .reality
    var standardIdentity: StandardIdentity = .unknown
    var dimention: Dimension = .air
    var status: Status = .present
    var hqtfd: HQTFD = .notApplicable
    var amplifier: Amplifier = .notApplicable
    var descriptor: AnyDescriptor = AnyDescriptor(NotApplicableDescriptor.notApplicable)
    var entity: AnyEntity = AnyEntity(AirUnitEntity.military)
    var entityType: AnyEntityType = .none
    var entitySubtype: AnyEntitySubtype = .none
    
    var isCivilian: Bool = false
    var isAlternateStatusAmplifiers: Bool = false
    
    var id: String { makeSIDC() }
}

extension MilitarySymbol {
    init?(sidc: String) {
        if sidc.count != 20 {
            print("It's not 20.")
            return nil
        } else {
            guard let context = Context.init(rawValue: sidc[2]) else {
                print("Context")
                return nil
            }
            self.context = context
            
            guard let standardIdentity = StandardIdentity.init(rawValue: sidc[3]) else {
                print("StandardIdentity")
                return nil
            }
            self.standardIdentity = standardIdentity
            
            guard let dimention = Dimension.init(rawValue: sidc[4] + sidc[5]) else {
                print("Dimension")
                return nil
            }
            self.dimention = dimention
            
            guard let status = Status.init(rawValue: sidc[6]) else {
                print("Status")
                return nil
            }
            self.status = status
            
            guard let hqtfd = HQTFD.init(rawValue: sidc[7]) else {
                print("HQTFD")
                return nil
            }
            self.hqtfd = hqtfd
            
            guard let amplifier = Amplifier.init(rawValue: sidc[8]) else {
                print("Amplifier")
                return nil
            }
            self.amplifier = amplifier
            
            guard let descriptor = amplifier.descriptors.first(where: {$0.id == sidc[9] }) else {
                print("Descriptor")
                return nil
            }
            self.descriptor = descriptor
            
            let entityDigits: String = sidc[10] + sidc[11]
            guard let entity = dimention.entities.first(where: { $0.id == entityDigits } ) else {
                print("Entity")
                return nil
            }
            self.entity = entity
            
            let entityTypeDigits: String =  sidc[12] + sidc[13]
            guard let entityType = entity.types.first(where: { $0.id == entityTypeDigits } ) else {
                print("EntityType")
                return nil
            }
            self.entityType = entityType
            
            let entitySybTypeDigits = sidc[14] + sidc[15]
            guard let entitySubtype = entityType.subtypes.first(where: { $0.id == entitySybTypeDigits } ) else {
                print("EntitySubtype")
                return nil
            }
            self.entitySubtype = entitySubtype
        }
    }
}

extension MilitarySymbol {
    static func search(text: String, standardIdentity: StandardIdentity = .unknown) -> [MilitarySymbol] {
        Dimension.allCases.map { dimention in
            MilitarySymbol(standardIdentity: standardIdentity, dimention: dimention)
        }.filter { symbol in
            if text.isEmpty {
                true
            } else {
                symbol.dimention.name.localizedStandardContains(text)
            }
        }
    }
    
    static func searched(text: String, standardIdentity: StandardIdentity = .unknown) -> [MilitarySymbol] {
        if text.isEmpty {
            return []
        } else {
            var result: [MilitarySymbol] = []
            Dimension.allCases.forEach { dimention in
                dimention.entities.forEach { entity in
                    entity.types.forEach { entityType in
                        result.append(
                            MilitarySymbol(standardIdentity: standardIdentity,
                                           dimention: dimention,
                                           entity: entity,
                                           entityType: entityType)
                        )
                    }
                }
            }
            return result.filter { symbol in
                if text.isEmpty {
                    false
                } else {
                    symbol.entity.name.localizedStandardContains(text) 
                    || symbol.entityType.name.localizedStandardContains(text)
                }
            }
        }
    }
}

extension MilitarySymbol {
    func makeSIDC() -> String {
        version + context.id + standardIdentity.id + dimention.id + status.id + hqtfd.id + amplifier.id + descriptor.id + entity.id + entityType.id + entitySubtype.id + "0000"
    }
    
    func makeFrame() -> Image {
        var lastDigit: String {
            let initial = if Int(status.id)! > 1 {
                "0"
            } else {
                status.id
            }
            
            if isCivilian {
                return initial + "c"
            } else {
                return initial
            }
        }
        
        return Image(context.id + "_" + standardIdentity.id + dimention.assetDigit + "_" + lastDigit)
    }
    
    func makeAmplifier() -> Image {
        return Image(standardIdentity.assetGigit + amplifier.id + descriptor.id)
    }
    
    // Uses SIDC positions 4-6 (standardIdentity-dimention) and position 8 (hqtfd).
    func makeHQTFFD() -> Image {
        return Image(standardIdentity.assetGigit + dimention.assetDigit + hqtfd.id)
    }
    
    //    func makeOCA() -> Image {
    //        if isAlternateStatusAmplifiers {
    //            return Image(context.id + standardIdentity.assetGigit + dimention.assetDigit + status.id + "2")
    //        } else {
    //            switch status {
    //            case .presentDamaged:
    //                return Image(status.id)
    //            case .presentDestroyed:
    //                return Image(status.id)
    //            default:
    //                // TODO: Figure out here
    //                return Image("")
    //            }
    //        }
    //    }
    
    func makeOCA(
        contextDigits: String,
        standardIdentityDigits: String,
        symbolSetDigits: String,
        statusDigits: String,
        isAlternateStatusAmplifiers: Bool = true
    ) -> Image {
        if isAlternateStatusAmplifiers {
            
            if statusDigits != "0"
                || statusDigits != "1" {
                
                var assetName: String {
                    let string = contextDigits
                    + standardIdentityDigits
                    + symbolSetDigits
                    + statusDigits
                    + "2"
                    return string
                }
                
                return Image(assetName)
            } else {
                return Image("")
            }
        } else {
            if statusDigits == "3"
                || statusDigits == "4" {
                
                return Image(statusDigits)
            } else {
                return Image("")
            }
        }
    }
    
    func makeMainIcon(
        symbolSetDigits: String?,
        entityDigits: String?,
        entityTypeDigits: String?,
        entitySubTypeDigits: String?
    ) -> Image {
        if let symbolSetDigits,
           let entityDigits {
            var assetName: String {
                let string = symbolSetDigits
                + entityDigits
                + (entityTypeDigits ?? "00")
                + (entitySubTypeDigits ?? "00")
                return string
            }
            
            return Image(assetName)
        } else {
            return Image("")
        }
    }
    
    func makeFullFrameMainIcon(
        statusDigits: String?,
        symbolSetDigits: String?,
        entityDigits: String?,
        entityTypeDigits: String?,
        entitySubTypeDigits: String?
    ) -> Image {
        if let symbolSetDigits,
           let entityDigits {
            var assetName: String {
                let string = symbolSetDigits
                + entityDigits
                + (entityTypeDigits ?? "00")
                + (entitySubTypeDigits ?? "00")
                //                + "_"
                //                + (statusDigits ?? "00")
                return string
            }
            
            return Image(assetName)
        } else {
            return Image("")
        }
    }
    
    func makeView(frameWidth: CGFloat? = nil) -> some View {
        ZStack {
            makeFrame()
                .resizable()
                .scaledToFit()
            makeAmplifier()
                .resizable()
                .scaledToFit()
            makeHQTFFD()
                .resizable()
                .scaledToFit()
            
            makeMainIcon(
                symbolSetDigits: dimention.id,
                entityDigits: entity.id,
                entityTypeDigits: entityType.id,
                entitySubTypeDigits: entitySubtype.id
            )
            .resizable()
            .scaledToFit()
            
            makeFullFrameMainIcon(
                statusDigits: status.id,
                symbolSetDigits: dimention.id,
                entityDigits: entity.id,
                entityTypeDigits: entityType.id,
                entitySubTypeDigits: entitySubtype.id
            )
            .resizable()
            .scaledToFit()
            
            makeOCA(
                contextDigits: context.id,
                standardIdentityDigits: standardIdentity.id,
                symbolSetDigits: dimention.id,
                statusDigits: status.id,
                isAlternateStatusAmplifiers: isAlternateStatusAmplifiers
            )
            .resizable()
            .scaledToFit()
        }
        .frame(width: frameWidth)
    }
}
