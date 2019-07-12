import XCTest
@testable import Smorgasbord

final class SmorgasbordTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Smorgasbord().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
