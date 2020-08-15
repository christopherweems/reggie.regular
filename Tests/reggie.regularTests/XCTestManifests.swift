import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(reggie_regularTests.allTests),
    ]
}
#endif
