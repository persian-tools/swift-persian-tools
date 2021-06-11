//
//  TestIntExtension.swift
//  SwiftPersianToolsTests
//
//  Created by Saeed on 5/5/21.
//

import XCTest

class TestIntExtension: XCTestCase {

    func testConvertToPersianText() throws {
        var number: Int = 1

        guard let persianText = number.convertToPersianText() else {
            XCTFail()
            return
        }

        XCTAssert(persianText == "یک")

        number = 125

        XCTAssertNotNil(number.convertToPersianText())

        XCTAssert((number.convertToPersianText() ?? "") == "صد و بیست و پنج")
    }

    func testFormatPrice() throws {
        var input = 1000

        XCTAssert(input.convertToCommaSeperatedCurrency(symbol: .IRR) == "1,000 ﷼")

        input = 25000
        XCTAssertFalse(input.convertToCommaSeperatedCurrency(symbol: .IRR) == "25,000 تومان")

        XCTAssert(input.convertToCommaSeperatedCurrency(symbol: .Toman) == "25,000 تومان")

        XCTAssert(input.convertToCommaSeperatedCurrency(symbol: .Dollar) == "$25,000")
    }
}
