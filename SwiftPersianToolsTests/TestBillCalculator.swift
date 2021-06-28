//
//  TestBillCalculator.swift
//  SwiftPersianToolsTests

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

    func testGetBarcode() throws {
        var bill = Bill(billId: "7748317800142", billPayment: "1770160")
        XCTAssertEqual(bill.getBarcode(), "77483178001420001770160")

        bill = Bill(billId: "9174639504124", billPayment: "12908197")
        XCTAssertEqual(bill.getBarcode(), "917463950412400012908197")
    }

    func testVerifyBillPayment() throws {
        var bill = Bill(billId: "7748317800142", billPayment: "1770160")
        XCTAssertTrue(bill.verifyBillPayment())

        bill = Bill(billId: "9174639504124", billPayment: "12908197")
        XCTAssertFalse(bill.verifyBillPayment())
    }

    func testVerifyBillId() throws {
        var bill = Bill(billId: "7748317800142", billPayment: "1770160")
        XCTAssertTrue(bill.verifyBillId())

        bill = Bill(billId: "2234322344613", billPayment: "1070189")
        XCTAssertFalse(bill.verifyBillId())
    }

    func testGetResult() throws {
        var bill = Bill(billId: "7748317800142", billPayment: "1770160").getResult()
        XCTAssertTrue(bill.isValidBillPayment)
        XCTAssertTrue(bill.isValidBillId)
        XCTAssertTrue(bill.isValid)
        XCTAssertEqual(bill.barcode, "77483178001420001770160")
        XCTAssertEqual(bill.type, BillTypes.phone.rawValue)
        XCTAssertEqual(bill.amount, 17000)
    }
}
