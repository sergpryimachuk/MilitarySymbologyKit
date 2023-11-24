//
//  Created with ♥ by Serhii Pryimachuk on 10.11.2023.
//

import Foundation
import SwiftUI

struct MilitarySymbol: Identifiable {
    private let version: String = "01"
    var context: Context = .reality
    var standartIdentity: StandardIdentity = .unknown
    var dimention: Dimension = .air
    var status: Status = .present
    var hqtfd: HQTFD = .notApplicable
    var amplifier: Amplifier = .notApplicable
    var descriptor: AnyDescriptor = AnyDescriptor(NotApplicableDescriptor.notApplicable)
    var entity: AnyEntity = AnyEntity(AirUnitEntity.military)
    var entityType: AnyEntityType = .empty
    
    var isCivilian: Bool = false
    var isAlternateStatusAmplifiers: Bool = false
    
    var id: String { makeSIDC() }
}

extension MilitarySymbol {
    static func search(text: String, standartIdentity: StandardIdentity = .unknown) -> [MilitarySymbol] {
        Dimension.allCases.map { dimention in
            MilitarySymbol(standartIdentity: standartIdentity, dimention: dimention)
        }.filter { symbol in
            if text.isEmpty {
                true
            } else {
                symbol.dimention.name.localizedStandardContains(text)
            }
        }
    }
    
    static func searched(text: String, standartIdentity: StandardIdentity = .unknown) -> [MilitarySymbol] {
        var result: [MilitarySymbol] = []
        Dimension.allCases.forEach { dimention in
            dimention.entities.forEach { entity in
                result.append(
                    MilitarySymbol(standartIdentity: standartIdentity,
                                   dimention: dimention,
                                   entity: entity)
                )
            }
        }
        return result.filter { symbol in
            if text.isEmpty {
                false
            } else {
                symbol.entity.name.localizedStandardContains(text)
            }
        }
    }
}

extension MilitarySymbol {
    func makeSIDC() -> String {
        version + context.id + standartIdentity.id + dimention.id + status.id + hqtfd.id + amplifier.id + descriptor.id + "0000000000"
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
        
        return Image(context.id + "_" + standartIdentity.id + dimention.assetDigit + "_" + lastDigit)
    }
    
    func makeAmplifier() -> Image {
        return Image(standartIdentity.assetGigit + amplifier.id + descriptor.id)
    }
    
    // Uses SIDC positions 4-6 (standartIdentity-dimention) and position 8 (hqtfd).
    func makeHQTFFD() -> Image {
        return Image(standartIdentity.assetGigit + dimention.assetDigit + hqtfd.id)
    }
    
    func makeOCA() -> Image {
        if isAlternateStatusAmplifiers {
            return Image(context.id + standartIdentity.assetGigit + dimention.assetDigit + status.id + "2")
        } else {
            switch status {
            case .presentDamaged:
                return Image(status.id)
            case .presentDestroyed:
                return Image(status.id)
            default:
                // TODO: Figure out here
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
                entityTypeDigits: "00",
                entitySubTypeDigits: "00"
            )
            .resizable()
            .scaledToFit()
            
            makeFullFrameMainIcon(
                statusDigits: status.id,
                symbolSetDigits: dimention.id,
                entityDigits: entity.id,
                entityTypeDigits: "",
                entitySubTypeDigits: ""
            )
            .resizable()
            .scaledToFit()
            
            makeOCA()
                .resizable()
                .scaledToFit()
        }
        .frame(width: frameWidth)
    }
}
