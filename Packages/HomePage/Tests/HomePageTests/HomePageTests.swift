import XCTest
@testable import HomePage

final class HomePageTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(HomePage().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
