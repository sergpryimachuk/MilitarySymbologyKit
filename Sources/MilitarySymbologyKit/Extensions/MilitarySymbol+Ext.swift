//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import MilitarySymbologyAssets
import OSLog
import SwiftUI

// MARK: - Conformance to protocols

extension MilitarySymbol: Comparable {
    public static func < (lhs: MilitarySymbol, rhs: MilitarySymbol) -> Bool {
        if lhs.dimension.id == rhs.dimension.id {
            if lhs.entity.id == rhs.entity.id {
                if lhs.entityType.id == rhs.entityType.id {
                    return lhs.entitySubtype.id > rhs.entitySubtype.id
                }

                return lhs.entity.id < rhs.entity.id
            }

            return lhs.entity.id < rhs.entity.id
        }

        return lhs.dimension.id < rhs.dimension.id
    }
}

// MARK: - initializers

public extension MilitarySymbol {
    /// Init with *default* values.
    /// Possible to change Status Amplifiers style.
    init(isAlternateStatusAmplifiers: Bool = false, isCivilian: Bool = false) {
        context = .reality
        standardIdentity = .pending
        dimension = .landUnits
        status = .present
        hqtfd = .none
        amplifier = .none
        descriptor = .none
        entity = .none
        entityType = .none
        entitySubtype = .none
        self.isCivilian = isCivilian
        self.isAlternateStatusAmplifiers = isAlternateStatusAmplifiers
    }

    /// Init for custom values.
    init(
        context: Context,
        standardIdentity: StandardIdentity,
        dimension: Dimension,
        status: Status,
        hqtfd: HQTFD,
        amplifier: Amplifier,
        descriptor: AnyDescriptor,
        entity: AnyEntity,
        entityType: AnyEntityType,
        entitySubtype: AnyEntitySubtype,
        isCivilian: Bool = false,
        isAlternateStatusAmplifiers: Bool = false
    ) {
        self.context = context
        self.standardIdentity = standardIdentity
        self.dimension = dimension
        self.status = status
        self.hqtfd = hqtfd
        self.amplifier = amplifier
        self.descriptor = descriptor
        self.entity = entity
        self.entityType = entityType
        self.entitySubtype = entitySubtype
        self.isCivilian = isCivilian
        self.isAlternateStatusAmplifiers = isAlternateStatusAmplifiers
    }

    /// Init from *SIDC* code.
    /// Possible to change Status Amplifiers style.
    init(
        sidc: String,
        isAlternateStatusAmplifiers: Bool = false,
        isCivilian: Bool = false
    ) throws {
        if sidc.count != 20 {
            throw MilitarySymbolError.sidcIsNot20
        } else {
            
            let contextDigit = sidc[2]
            guard let context = Context(rawValue: contextDigit) else {
                throw MilitarySymbolError.contextParcingFailed(contextDigit)
            }
            self.context = context
            
            let standardIdentityDigit = sidc[3]
            guard let standardIdentity = StandardIdentity(rawValue: standardIdentityDigit) else {
                throw MilitarySymbolError.standardIdentityParcingFailed(standardIdentityDigit)
            }
            self.standardIdentity = standardIdentity

            let dimensionDigits = sidc[4] + sidc[5]
            guard let dimension = Dimension(rawValue: dimensionDigits) else {
                throw MilitarySymbolError.dimensionParcingFailed(dimensionDigits)
            }
            self.dimension = dimension

            let statusDigit = sidc[6]
            guard let status = Status(rawValue: statusDigit) else {
                throw MilitarySymbolError.statusParcingFailed(statusDigit)
            }
            self.status = status
            
            let hqtfdDigit = sidc[7]
            guard let hqtfd = HQTFD(rawValue: hqtfdDigit) else {
                throw MilitarySymbolError.hqtfdParcingFailed(hqtfdDigit)
            }
            self.hqtfd = hqtfd

            let amplifierDigit = sidc[8]
            guard let amplifier = Amplifier(rawValue: amplifierDigit) else {
                throw MilitarySymbolError.amplifierParcingFailed(amplifierDigit)
            }
            self.amplifier = amplifier

            let descriptorDigit = sidc[9]
            guard let descriptor = amplifier.descriptors.first(where: { $0.id == descriptorDigit }) else {
                throw MilitarySymbolError.descriptorParcingFailed(descriptorDigit)
            }
            self.descriptor = descriptor

            let entityDigits: String = sidc[10] + sidc[11]
            guard let entity = dimension.entities.first(where: { $0.id == entityDigits }) else {
                throw MilitarySymbolError.entityParcingFailed(entityDigits)
            }
            self.entity = entity

            let entityTypeDigits: String = sidc[12] + sidc[13]
            guard let entityType = entity.types.first(where: { $0.id == entityTypeDigits }) else {
                throw MilitarySymbolError.entityTypeParcingFailed(entityTypeDigits)
            }
            self.entityType = entityType

            let entitySybTypeDigits = sidc[14] + sidc[15]
            guard let entitySubtype = entityType.subtypes.first(where: { $0.id == entitySybTypeDigits }) else {
                throw MilitarySymbolError.entitySubtypeParcingFailed(entitySybTypeDigits)
            }
            self.entitySubtype = entitySubtype

            self.isCivilian = isCivilian
            self.isAlternateStatusAmplifiers = isAlternateStatusAmplifiers
        }
    }
}

// MARK: - Asset name generators

public extension MilitarySymbol {
    // MARK: - FRAME

    /// **Uses SIDC positions 3-7**, with an underscore between the first digit in the name and the last digit in the name. Purple filled frames for Civilian units, equipment, and installations have a ‘c’ at the end of the file name.
    var frameAssetName: String? {
        guard dimension != .cyberspace else {
            return nil
        }

        var statusDigit: String {
            let initial = switch status {
            case .present, .plannedAnticipatedSuspect:

                switch standardIdentity {
                case .pending, .assumedFriend, .suspect:
                    Status.present.id
                default:
                    status.id
                }

            default:
                Status.present.id
            }

            if isCivilian {
                return initial + "c"
            } else {
                return initial
            }
        }

        var dimensionDigit: String {
            switch dimension {
            case .airMissile: // .signalsIntelligenceAir:
                Dimension.air.id
            case .spaceMissile: // .signalsIntelligenceSpace:
                Dimension.space.id
            case .landCivilian: // .signalsIntelligenceLand, .signalsIntelligenceSurface:
                Dimension.landUnits.id
            case .mineWarfare: // .signalsIntelligenceSubsurface:
                Dimension.seaSubsurface.id
            default:
                dimension.id
            }
        }

        var standardIdentityDigit: String {
            switch standardIdentity {
            default:
                standardIdentity.id
            }
        }

        let result = context.id
            + "_"
            + standardIdentityDigit
            + dimensionDigit
            + "_"
            + statusDigit

        Logger.militarySymbol.info("Made frameAssetName: \(result)")

        return result
    }

    // MARK: - AMPLIFIER

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

    // MARK: - HQTFD

    /// Uses SIDC **positions 4-6 (StandardIdentity-Dimension)** and position **8 (hqtfd)**.
    var hqtfdAssetName: String? {
        if hqtfd == .none {
            return nil
        } else {
            var dimensionDigit: String {
                switch dimension {
                case .airMissile: // .signalsIntelligenceAir:
                    Dimension.air.id
                case .spaceMissile: // .signalsIntelligenceSpace:
                    Dimension.space.id
                case .landCivilian: // .signalsIntelligenceLand, .signalsIntelligenceSurface:
                    Dimension.landUnits.id
                case .mineWarfare: // .signalsIntelligenceSubsurface:
                    Dimension.seaSubsurface.id
                default:
                    dimension.id
                }
            }

            let result = standardIdentity.assetDigit + dimensionDigit + hqtfd.id

            Logger.militarySymbol.info("Made hqtfdAssetName: \(result)")

            return result
        }
    }

    // MARK: - OCA

    var ocaAssetName: String? {
        if isAlternateStatusAmplifiers {
            switch status {
            case .present, .plannedAnticipatedSuspect:
                return nil
            default:
                return Context.reality.id
                    + standardIdentity.assetDigit
                    + dimension.id
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

    // MARK: - Main icons

    /// Uses SIDC positions **5-6 (Symbol Set) and 11-16 (Entity, EntityType, EntitySubtype)**.
    var mainIconAssetName: String? {
        if AmplifierEntitySubtype.allCases.dropFirst()
            .map({ $0.id }).contains(entitySubtype.id)
        {
            switch dimension {
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
                    let result = dimension.id
                        + entity.id
                        + entityType.id
                        + "00_"
                        + standardIdentityDigits
                    Logger.militarySymbol.info("Made mainIconAssetName WITH AmplifierEntitySubtype: \(result)")
                    return result

                case AnyEntityType(LandUnitEntity.FiresEntityType.fieldArtillery):
                    let result = dimension.id
                        + entity.id
                        + entityType.id
                        + "00"

                    Logger.militarySymbol.info("Made mainIconAssetName WITH AmplifierEntitySubtype: \(result)")
                    return result
                default:
                    let result = dimension.id
                        + entity.id
                        + entityType.id
                        + "00"
                    Logger.militarySymbol.info("Made mainIconAssetName WITH AmplifierEntitySubtype: \(result)")
                    return result
                }
            default:
                let result = dimension.id
                    + entity.id
                    + entityType.id
                    + "00"
                Logger.militarySymbol.info("Made mainIconAssetName WITH AmplifierEntitySubtype: \(result)")
                return result
            }
        } else {
            let result = dimension.id
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
        if dimension == .landUnits
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

            let result = dimension.id
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

            let result = dimension.id
                + entity.id
                + entityType.id
                + entitySubtype.id
                + "_"
                + standardIdentityDigits

            Logger.militarySymbol.info("Made fullFrameMainIconAssetName WITHOUT AmplifierEntitySubtype: \(result)")

            return result
        }
    }
}

// MARK: - Views

public extension MilitarySymbol {
    func makeView(size: CGFloat? = nil) -> some View {
        ZStack {
            if let frameAssetName {
                Image(frameAssetName, bundle: .militarySymbologyAssets)
                    .resizable()
                    .scaledToFit()
            }

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

    static func makeUnknownSymbolView(size: CGFloat? = nil) -> some View {
        Image(systemName: "questionmark.diamond.fill")
            .resizable()
            .scaledToFit()
            .frame(width: size)
            .symbolRenderingMode(.hierarchical)
            .foregroundStyle(.orange)
    }
}
