//
//  TestBillCalculator.swift
//  SwiftPersianToolsTests
//
//  Created by Saeed on 6/27/21.
//

import XCTest

class TestBillCalculator: XCTestCase {

    func testGetAmount() throws {
        var bill = Bill(billId: "1117753200140", billPayment: "12070160")
        XCTAssertEqual(bill.getAmount(), 120000)

        bill = Bill(billId: "1117753200140", billPayment: "12070160", currency: .toman)
        XCTAssertEqual(bill.getAmount(), 12000)
    }

    func testGetType() throws {
        var bill = Bill(billId: "7748317800142", billPayment: "12070160")
        XCTAssertEqual(bill.getType(), BillTypes.phone.rawValue)

        bill.billId = "9174639504124"
        XCTAssertEqual(bill.getType(), BillTypes.electricity.rawValue)

        bill.billId = "2050327604613"
        XCTAssertEqual(bill.getType(), BillTypes.water.rawValue)

        bill.billId = "9100074409151"
        XCTAssertEqual(bill.getType(), BillTypes.mobile.rawValue)

        bill.billId = "7748317800105"
        XCTAssertEqual(bill.getType(), BillTypes.unknown.rawValue)
    }
}
