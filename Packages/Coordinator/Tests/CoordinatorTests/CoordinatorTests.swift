import XCTest
@testable import Coordinator

final class CoordinatorTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Coordinator().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
