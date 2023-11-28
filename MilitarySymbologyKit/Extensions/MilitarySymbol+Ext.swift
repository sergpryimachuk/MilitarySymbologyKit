//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import SwiftUI

extension MilitarySymbol {
    func makeSIDC() -> String {
        version + context.id + standardIdentity.id + dimention.id + status.id + hqtfd.id + amplifier.id + descriptor.id + entity.id + entityType.id + entitySubtype.id + "0000"
    }

    // MARK: - FRAME
    // All good.
    
    func makeFrame() -> Image {
        var lastDigit: String {
//            let initial = if Int(status.id)! > 1 {
//                "0"
//            } else {
//                status.id
//            }
            
            let initial = if status == .present || status == .plannedAnticipatedSuspect {
                status.id
            } else {
                "0"
            }

            if isCivilian {
                return initial + "c"
            } else {
                return initial
            }
        }

        return Image(context.id + "_" + standardIdentity.id + dimention.assetDigit + "_" + lastDigit)
    }

    
    // MARK: - AMPLIFIER
    // All good.
    
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
                || statusDigits != "1"
            {
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
                || statusDigits == "4"
            {
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
           let entityDigits
        {
            var assetName: String {
                let entitySubTypeDigit: String = if AmplifierEntitySubtype.allCases.dropFirst()
                    .map({ $0.id }).contains(entitySubTypeDigits) {
                    "00"
                } else {
                    entitySubTypeDigits ?? "00"
                }
                let string = symbolSetDigits
                + entityDigits
                + (entityTypeDigits ?? "00")
                + entitySubTypeDigit
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
           let entityDigits
        {
            var assetName: String {
                
                if symbolSetDigits == "10"
                    && AmplifierEntitySubtype.allCases.dropFirst()
                    .map({ $0.id }).contains(entitySubTypeDigits) {
                    
                    let standardIdentityDigits: String = switch standardIdentity {
                    case .pending, .unknown:
                        "0"
                    case .assumedFriend, .friend:
                        "1"
                    case .neutral:
                        "2"
                    case .suspect, .hostile:
                        context == .exercise ? "1" : "3"
                    }
                    
                    let string = symbolSetDigits
                    + "xxxx"
                    + (entitySubTypeDigits ?? "00")
                    + "_"
                    + standardIdentityDigits // context.id
                    
                    return string
                    
                } else {
                    
                    let standardIdentityDigits: String = switch standardIdentity {
                    case .pending, .unknown:
                        "0"
                    case .assumedFriend, .friend:
                        "1"
                    case .neutral:
                        "2"
                    case .suspect, .hostile:
                        "3"
                    }
                    
                    let string = symbolSetDigits
                    + entityDigits
                    + (entityTypeDigits ?? "00")
                    + (entitySubTypeDigits ?? "00")
                    + "_"
                    + standardIdentityDigits  // context.id //(statusDigits ?? "00")
                    return string
                }
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
