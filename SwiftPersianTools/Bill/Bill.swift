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
    var barcode: String?
    var currency: CurrencyType
    var billId: String
    var billPayment: String
}

extension Bill: BillCalculator {
    func getAmount() -> Double {
        return 0.0
    }

    func getBarcode() -> String {
        return ""
    }

    func getType() -> String {
        return ""
    }

    func getResult() -> BillResult? {
        return nil
    }
}
