//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import MilitarySymbologyAssets
import OSLog
import SwiftUI

public extension MilitarySymbol {
    /// Init with *default* values.
    init(isAlternateStatusAmplifiers: Bool = true) {
        context = .reality
        standardIdentity = .pending
        dimention = .landUnits
        status = .present
        hqtfd = .none
        amplifier = .none
        descriptor = .none
        entity = .none
        entityType = .none
        entitySubtype = .none
        isCivilian = false
        self.isAlternateStatusAmplifiers = isAlternateStatusAmplifiers
    }
}

public extension MilitarySymbol {
    // MARK: - FRAME

    // All good.

    /// **Uses SIDC positions 3-7**, with an underscore between the first digit in the name and the last digit in the name. Purple filled frames for Civilian units, equipment, and installations have a ‘c’ at the end of the file name.
    var frameAssetName: String {
        var lastDigit: String {
            let initial = switch status {
            case .present, .plannedAnticipatedSuspect:
                
                switch standardIdentity {
                default:
                    "0"
                }
                
            default:
                "0"
            }

            if isCivilian {
                return initial + "c"
            } else {
                return initial
            }
        }
        
        var dimentionDigit: String {
            switch dimention {
            case .airMissile: // .signalsIntelligenceAir:
                Dimension.air.id
            case .spaceMissile: // .signalsIntelligenceSpace:
                Dimension.space.id
            case .landCivilian: // .signalsIntelligenceLand, .signalsIntelligenceSurface:
                Dimension.landUnits.id
            case .mineWarfare: // .signalsIntelligenceSubsurface:
                Dimension.seaSubsurface.id
            default:
                dimention.id
            }
        }
        
        var standardIdentityDigit: String {
            switch standardIdentity {
            default:
                standardIdentity.id
            }
        }
        
        return context.id
            + "_"
            + standardIdentityDigit
            + dimentionDigit
            + "_"
            + lastDigit
    }

    // MARK: - AMPLIFIER

    // All good.

    /// Uses SIDC positions 4 and 9-10.
    var amplifierAssetName: String? {
        switch amplifier {
        case .none:
            return nil
        default:

            switch descriptor {
            case .none:
                return nil
            default:
                let result = standardIdentity.assetDigit + amplifier.id + descriptor.id
                Logger.militarySymbol.info("Made amplifierAssetName: \(result)")
                return result
            }
        }
    }

    /// Uses SIDC **positions 4-6 (StandardIdentity-Dimention)** and position **8 (hqtfd)**.
    var hqtfdAssetName: String? {
        if hqtfd == .none {
            return nil
        } else {
            
            var dimentionDigit: String {
                switch dimention {
                case .airMissile: // .signalsIntelligenceAir:
                    Dimension.air.id
                case .spaceMissile: // .signalsIntelligenceSpace:
                    Dimension.space.id
                case .landCivilian: // .signalsIntelligenceLand, .signalsIntelligenceSurface:
                    Dimension.landUnits.id
                case .mineWarfare: // .signalsIntelligenceSubsurface:
                    Dimension.seaSubsurface.id
                default:
                    dimention.id
                }
            }
            
            let result = standardIdentity.assetDigit + dimentionDigit + hqtfd.id

            Logger.militarySymbol.info("Made hqtfdAssetName: \(result)")

            return result
        }
    }

    var ocaAssetName: String? {
        if isAlternateStatusAmplifiers {
            switch status {
            case .present, .plannedAnticipatedSuspect:
                return nil
            default:
                return Context.reality.id
                    + standardIdentity.assetDigit
                    + dimention.id
                    + status.id
                    + "2"
            }

        } else {
            switch status {
            case .presentDamaged, .presentDestroyed:
                return status.id
            default:
                return nil
            }
        }
    }

    /// Uses SIDC positions **5-6 (Symbol Set) and 11-16 (Entity, EntityType, EntitySubtype)**.
    var mainIconAssetName: String? {
        if AmplifierEntitySubtype.allCases.dropFirst()
            .map({ $0.id }).contains(entitySubtype.id)
        {
            switch dimention {
            case .landUnits:

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

                switch entityType {
                case AnyEntityType(LandUnitEntity.CommandAndControlEntityType.signal),
                     AnyEntityType(LandUnitEntity.MovementAndManeuverEntityType.airAssaultWithOrganicLift),
                     AnyEntityType(LandUnitEntity.MovementAndManeuverEntityType.amphibious),
                     AnyEntityType(LandUnitEntity.MovementAndManeuverEntityType.antitankAntiarmor),
                     AnyEntityType(LandUnitEntity.MovementAndManeuverEntityType.infantry),
                     AnyEntityType(LandUnitEntity.MovementAndManeuverEntityType.reconnaissanceCavalryScout),
                     AnyEntityType(LandUnitEntity.FiresEntityType.airDefense),
                     AnyEntityType(LandUnitEntity.FiresEntityType.airLandNavalGunfireLiaison),
                     AnyEntityType(LandUnitEntity.IntelligenceEntityType.jamming),
                     AnyEntityType(LandUnitEntity.SustainmentEntityType.allClassesOfSupply),
                     AnyEntityType(LandUnitEntity.SustainmentEntityType.material),
                     AnyEntityType(LandUnitEntity.SustainmentEntityType.medical),
                     AnyEntityType(LandUnitEntity.SustainmentEntityType.medicalTreatmentFacility),
                     AnyEntityType(LandUnitEntity.SustainmentEntityType.multipleClassesOfSupply),
                     AnyEntityType(LandUnitEntity.SustainmentEntityType.natoSupplyClassI),
                     AnyEntityType(LandUnitEntity.SustainmentEntityType.natoSupplyClassI1),
                     AnyEntityType(LandUnitEntity.SustainmentEntityType.natoSupplyClassIII),
                     AnyEntityType(LandUnitEntity.SustainmentEntityType.natoSupplyClassIV),
                     AnyEntityType(LandUnitEntity.SustainmentEntityType.usSupplyClassI),
                     AnyEntityType(LandUnitEntity.SustainmentEntityType.usSupplyClassII),
                     AnyEntityType(LandUnitEntity.SustainmentEntityType.usSupplyClassIII),
                     AnyEntityType(LandUnitEntity.SustainmentEntityType.usSupplyClassIV),
                     AnyEntityType(LandUnitEntity.SustainmentEntityType.usSupplyClassV),
                     AnyEntityType(LandUnitEntity.SustainmentEntityType.usSupplyClassVI),
                     AnyEntityType(LandUnitEntity.SustainmentEntityType.usSupplyClassVII),
                     AnyEntityType(LandUnitEntity.SustainmentEntityType.usSupplyClassVIII),
                     AnyEntityType(LandUnitEntity.SustainmentEntityType.usSupplyClassIX),
                     AnyEntityType(LandUnitEntity.SustainmentEntityType.usSupplyClassX),
                     AnyEntityType(LandUnitEntity.SustainmentEntityType.supply):
                    let result = dimention.id
                        + entity.id
                        + entityType.id
                        + "00_"
                        + standardIdentityDigits
                    Logger.militarySymbol.info("Made mainIconAssetName WITH AmplifierEntitySubtype: \(result)")
                    return result

                case AnyEntityType(LandUnitEntity.FiresEntityType.fieldArtillery):
                    let result = dimention.id
                        + entity.id
                        + entityType.id
                        + "00"

                    Logger.militarySymbol.info("Made mainIconAssetName WITH AmplifierEntitySubtype: \(result)")
                    return result
                default:
                    let result = dimention.id
                        + entity.id
                        + entityType.id
                        + "00"
                    Logger.militarySymbol.info("Made mainIconAssetName WITH AmplifierEntitySubtype: \(result)")
                    return result
                }
            default:
                let result = dimention.id
                    + entity.id
                    + entityType.id
                    + "00"
                Logger.militarySymbol.info("Made mainIconAssetName WITH AmplifierEntitySubtype: \(result)")
                return result
            }
        } else {
            let result = dimention.id
                + entity.id
                + entityType.id
                + entitySubtype.id

            Logger.militarySymbol.info("Made mainIconAssetName WITHOUT AmplifierEntitySubtype: \(result)")

            return result
        }
    }

    /// For full-frame main icons (main icons that touch the frame), there is an additional suffix depending on the frame that the icon must touch:
    /// _ 0 = Unknown
    /// _1 = Friend
    /// _2 = Neutral
    /// _3 = Hostile
    var fullFrameMainIconAssetName: String {
        if dimention == .landUnits
            && AmplifierEntitySubtype.allCases.dropFirst()
            .map({ $0.id }).contains(entitySubtype.id)
        {
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

            let result = dimention.id
                + "xxxx"
                + (entitySubtype.id)
                + "_"
                + standardIdentityDigits // context.id

            Logger.militarySymbol.info("Made fullFrameMainIconAssetName WITH AmplifierEntitySubtype: \(result)")

            return result
        } else {
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

            let result = dimention.id
                + entity.id
                + entityType.id
                + entitySubtype.id
                + "_"
                + standardIdentityDigits

            Logger.militarySymbol.info("Made fullFrameMainIconAssetName WITHOUT AmplifierEntitySubtype: \(result)")

            return result
        }
    }

    func makeView(size: CGFloat? = nil) -> some View {
        ZStack {
            Image(frameAssetName, bundle: .militarySymbologyAssets)
                .resizable()
                .scaledToFit()

            if let amplifierAssetName {
                Image(amplifierAssetName, bundle: .militarySymbologyAssets)
                    .resizable()
                    .scaledToFit()
            }

            if let hqtfdAssetName {
                Image(hqtfdAssetName, bundle: .militarySymbologyAssets)
                    .resizable()
                    .scaledToFit()
            }

            if let mainIconAssetName {
                Image(mainIconAssetName, bundle: .militarySymbologyAssets)
                    .resizable()
                    .scaledToFit()
            }

            Image(fullFrameMainIconAssetName, bundle: .militarySymbologyAssets)
                .resizable()
                .scaledToFit()

            if let ocaAssetName {
                Image(ocaAssetName, bundle: .militarySymbologyAssets)
                    .resizable()
                    .scaledToFit()
            }
        }
        .frame(width: size, height: size)
    }
}

public extension MilitarySymbol {
    static func makeUnknownSymbolView(size: CGFloat? = nil) -> some View {
        Image(systemName: "questionmark.diamond.fill")
            .resizable()
            .scaledToFit()
            .frame(width: size)
            .symbolRenderingMode(.hierarchical)
            .foregroundStyle(.orange)
    }
}
