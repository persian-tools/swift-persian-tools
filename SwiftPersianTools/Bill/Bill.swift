//
//  Bill.swift
//  SwiftPersianTools

import Foundation

protocol BillCalculator {
    func getAmount() -> Double

    func getBarcode() -> String

    func getType() -> String

    func getResult() -> BillResult

    func verifyBillId() -> Bool

    func verifyBillPayment() -> Bool
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

    fileprivate func findBillTypeByIndex(index: Int) -> String {
        let billTypeCollection: [Int: BillTypes] = [1: .water, 2: .electricity, 3: .gas, 4: .phone, 5: .mobile, 6: .tax, 8: .taxOrganization, 9: .trafficCrimes]

        return billTypeCollection[index]?.rawValue ?? BillTypes.unknown.rawValue
    }

    fileprivate func calTheBit(number: String) -> Int {
        var sum = 0
        var base = 2
        var index = 0

        while index < number.count {
            if base == 8 {
                base = 2
            }

            let start = number.index(number.endIndex, offsetBy: -(1 + index))
            let end = number.index(number.endIndex, offsetBy: -(index))
            let subRange = start..<end
            let subString = number[subRange]
            sum += (Int(subString) ?? 0) * base

            base += 1
            index += 1
        }

        sum %= 11

        if sum < 2 {
            return 0
        }

        sum = 11 - sum

        return sum
    }

    fileprivate func verifyBill() -> Bool {
        return verifyBillPayment() && verifyBillId()
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
        return "\(billId)000\(billPayment)"
    }

    func getType() -> String {
        let start = billId.index(billId.endIndex, offsetBy: -2)
        let end = billId.index(billId.endIndex, offsetBy: -1)
        let typeRange = start..<end

        let billType = Int(billId[typeRange]) ?? 0
        return findBillTypeByIndex(index: billType)
    }

    func verifyBillPayment() -> Bool {
        if billPayment.count < 6 {
            return false
        }

        let firstControlBit = Array(billPayment)[billPayment.count - 2]
        let secondControlBit = Array(billPayment)[billPayment.count - 1]
        let paymentId: String = String(billPayment.prefix(billPayment.count - 2))
        if calTheBit(number: paymentId) == Int(firstControlBit.lowercased())
            && calTheBit(number: "\(billId)\(paymentId)\(firstControlBit)") == Int(secondControlBit.lowercased()) {
            return true
        }

        return false
    }

    func verifyBillId() -> Bool {
        var result = false
        if billId.count < 6 {
            result = false
        }

        let controlBit = Array(billPayment)[billPayment.count - 1]
        let newBillId: String = String(billId.prefix(billPayment.count - 1))

        if calTheBit(number: newBillId) == Int(controlBit.lowercased()) {
            result = true
        }

        let type = self.getType()

        return result && type != BillTypes.unknown.rawValue
    }

    func getResult() -> BillResult {
        return BillResult(amount: self.getAmount(),
                          type: self.getType(),
                          barcode: self.getBarcode(),
                          isValid: self.verifyBill(),
                          isValidBillId: self.verifyBillId(),
                          isValidBillPayment: self.verifyBillPayment())
    }
}
