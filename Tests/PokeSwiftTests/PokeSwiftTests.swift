import XCTest
@testable import PokeSwift

final class PokeSwiftTests: XCTestCase {
	override func setUp() {
		super.setUp()
	}
	
	override func tearDown() {
		super.tearDown()
	}

    static var allTests = [
        ("testPass", testPass)
    ]
	
	func testPass() {
		XCTAssertTrue(true)
	}
}
