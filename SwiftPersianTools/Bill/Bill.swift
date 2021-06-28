//
//  Bill.swift
//  SwiftPersianTools
//
//  Created by Saeed on 6/27/21.
//

import Foundation

protocol BillCalculator {
    func getAmount() -> Double

    func getBarcode() -> String

    func getType() -> String

    func getResult() -> BillResult?
}

public struct Bill {
    var billId: String
    var billPayment: String
    var barcode: String?
    var currency: CurrencyType?

    init(billId: String, billPayment: String, barcode: String? = nil, currency: CurrencyType? = .rial) {
        self.billId = billId
        self.billPayment = billPayment
        self.barcode = barcode
        self.currency = currency
    }
}

extension Bill: BillCalculator {
    func getAmount() -> Double {
        let basePrice: Double = currency == .rial ? 1000: 100
        var billAmount = Double(billPayment.prefix(billPayment.count - 5)) ?? 0
        billAmount *= basePrice
        return billAmount
    }

    func getBarcode() -> String {
        return ""
    }

    func getType() -> String {
        let start = billId.index(billId.endIndex, offsetBy: -2)
        let end = billId.index(billId.endIndex, offsetBy: -1)
        let typeRange = start..<end

        let billType = Int(billId[typeRange]) ?? 0
        return findBillTypeByIndex(index: billType)
    }

    func findBillTypeByIndex(index: Int) -> String {
        let billTypeCollection: [Int: BillTypes] = [1: .water, 2: .electricity, 3: .gas, 4: .phone, 5: .mobile, 6: .tax, 8: .taxOrganization, 9: .trafficCrimes]

        return billTypeCollection[index]?.rawValue ?? BillTypes.unknown.rawValue
    }

    func getResult() -> BillResult? {
        return nil
    }
}
