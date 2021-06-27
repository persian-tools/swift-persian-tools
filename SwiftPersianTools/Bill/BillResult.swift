//
//  BillResult.swift
//  SwiftPersianTools
//
//  Created by Saeed on 6/27/21.
//

import Foundation

public struct BillResult {
    // bill amount
    var amount: Double
    // bill type
    var type: String
    // bill barcode
    var barcode: String
    // bill validation
    var isValid: Bool
    // Bill id validation
    var isValidBillId: Bool
    // payment id validation
    var isValidBillPayment: Bool
}
