import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(PokeSwiftTests.allTests),
		testCase(JSONDecodingTests.allTests)
    ]
}
#endif
