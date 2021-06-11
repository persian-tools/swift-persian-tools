//
//  TestStringExtension.swift
//  SwiftPersianToolsTests
//
//  Created by Saeed on 5/10/21.
//

import XCTest

class TestStringExtension: XCTestCase {

    func testRemoveComma() throws {
        var stringNumber = "100,234,433"

        XCTAssertEqual(stringNumber.removeComma(), "100234433")

        stringNumber = "۲٫۱۰۰"

        XCTAssertEqual(stringNumber.removeComma(), "۲۱۰۰")
    }

    func testAddComma() throws {
        var stringNumber = "23456"

        XCTAssertEqual(stringNumber.addComma(), "۲۳٬۴۵۶")

        stringNumber = "۱۲۳۷۸۹"

        XCTAssertEqual(stringNumber.addComma(), "۱۲۳٬۷۸۹")
    }

    func testValidateNationalCode() throws {
        var codeMelli = "0499370899"

        XCTAssertTrue(codeMelli.isValidIranianNationallCode())

        codeMelli = "0963695398"
        XCTAssertTrue(codeMelli.isValidIranianNationallCode())

        codeMelli = "0067749828"
        XCTAssertTrue(codeMelli.isValidIranianNationallCode())

        codeMelli = "0684159415"
        XCTAssertFalse(codeMelli.isValidIranianNationallCode())
    }
}
