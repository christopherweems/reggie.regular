import XCTest

import reggie_regularTests

var tests = [XCTestCaseEntry]()
tests += reggie_regularTests.allTests()
XCTMain(tests)
