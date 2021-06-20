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

        stringNumber = "23456"
        stringNumber = stringNumber.addComma() ?? ""
        XCTAssertEqual(stringNumber.removeComma(), "۲۳۴۵۶")
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

    func testVerifyCardNumber() throws {
        var cardNumber = "6037701689095443"
        XCTAssertTrue(cardNumber.verifyCardNumber())

        cardNumber = "6219861034529007"
        XCTAssertTrue(cardNumber.verifyCardNumber())

        cardNumber = "6219861034529008"
        XCTAssertFalse(cardNumber.verifyCardNumber())
    }

    func testGetPlaceByNationalId() throws {
        var nationalId = "0499370899"
        var findPlace = nationalId.getPlaceByIranNationalId()
        XCTAssertEqual(findPlace?.city, "شهرری")
    }

    func testValidateSheba() throws {
        var sheba = "IR820540102680020817909002"
        XCTAssertTrue(sheba.validateIranianSheba())

        sheba = "IR01234567890123456789"
        XCTAssertFalse(sheba.validateIranianSheba())
    }
}
