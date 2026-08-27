@testable import MilitarySymbologyKit
import XCTest

final class MilitarySymbolTests: XCTestCase {
    private let validSIDC = "10031004121211040000"

    func testParsingErrorsIncludeTheirInvalidDigits() {
        let cases = [
            (sidc(replacing: [(2, "9")]), ["Wrong symbol context", "9"]),
            (sidc(replacing: [(3, "9")]), ["Wrong symbol standard identity", "9"]),
            (sidc(replacing: [(4, "99")]), ["Wrong symbol set", "99"]),
            (sidc(replacing: [(6, "9")]), ["Wrong symbol status", "9"]),
            (sidc(replacing: [(7, "9")]), ["Wrong symbol HQTFD", "9"]),
            (sidc(replacing: [(8, "9")]), ["Wrong symbol amplifier", "9"]),
            (sidc(replacing: [(9, "9")]), ["Wrong symbol amplifier descriptor", "1", "9"]),
            (sidc(replacing: [(10, "99")]), ["Wrong symbol entity", "10", "99"]),
            (sidc(replacing: [(12, "99")]), ["Wrong symbol entity type", "10", "12", "99"]),
            (sidc(replacing: [(14, "99")]), ["Wrong symbol entity subtype", "10", "12", "11", "99"]),
        ]

        for (sidc, expectedParts) in cases {
            let error = parsingError(for: sidc)
            XCTAssertTrue(
                expectedParts.allSatisfy(error.localizedDescription.contains),
                "Unexpected error: \(error.localizedDescription)"
            )
        }
    }

    func testREADMEExampleRoundTrips() throws {
        let symbol = MilitarySymbol(
            context: .reality,
            standardIdentity: .friend,
            dimension: .landUnits,
            status: .present,
            hqtfd: .taskForce,
            amplifier: .echelonBrigadeBelow,
            descriptor: AnyDescriptor(EchelonBrigadeBelowDescriptor.squad),
            entity: AnyEntity(LandUnitEntity.movementAndManeuver),
            entityType: AnyEntityType(LandUnitEntity.MovementAndManeuverEntityType.infantry),
            entitySubtype: AnyEntitySubtype(InfantryEntitySubtype.motorized)
        )

        XCTAssertEqual(symbol.sidc, validSIDC)

        let parsed = try MilitarySymbol(sidc: symbol.sidc)
        XCTAssertEqual(parsed.context, symbol.context)
        XCTAssertEqual(parsed.standardIdentity, symbol.standardIdentity)
        XCTAssertEqual(parsed.dimension, symbol.dimension)
        XCTAssertEqual(parsed.entity.id, symbol.entity.id)
        XCTAssertEqual(parsed.entityType.id, symbol.entityType.id)
        XCTAssertEqual(parsed.entitySubtype.id, symbol.entitySubtype.id)
    }

    private func sidc(replacing replacements: [(Int, String)]) -> String {
        var characters = Array(validSIDC)
        for (offset, value) in replacements {
            for (index, character) in value.enumerated() {
                characters[offset + index] = character
            }
        }
        return String(characters)
    }

    private func parsingError(for sidc: String) -> MilitarySymbolError {
        do {
            _ = try MilitarySymbol(sidc: sidc)
            XCTFail("Expected parsing to fail")
        } catch let error as MilitarySymbolError {
            return error
        } catch {
            XCTFail("Unexpected error: \(error)")
        }

        return .sidcIsNot20
    }
}
