import XCTest
@testable import MilitarySymbologyKit

final class MilitarySymbolCatalogTests: XCTestCase {
    func testGeneratedResultPreservesModifierFlagsWhenSelected() throws {
        let initialValue = MilitarySymbol(
            isAlternateStatusAmplifiers: true,
            isCivilian: true
        )

        let selectedSymbol = try XCTUnwrap(
            [MilitarySymbol].allEntityCases(initialValue: initialValue).first
        )

        XCTAssertTrue(selectedSymbol.isCivilian)
        XCTAssertTrue(selectedSymbol.isAlternateStatusAmplifiers)
    }
}
