//
//  Sheba.swift
//  SwiftPersianTools

import Foundation

public extension String {
    func validateIranianSheba() -> Bool {
        if self.count != 26 {
            return false
        }

        let shebaRegEx = "IR[0-9]{2}([0-9]{3})[0-9]{19}"
        let testCase = NSPredicate(format: "SELF MATCHES %@", shebaRegEx)
        if !testCase.evaluate(with: self) {
            return false
        }

        var a = self.utf8.map{ $0 }
        while a.count < 4 {
            a.append(0)
        }
        let b = a[4..<a.count] + a[0..<4]
        let remainder = b.reduce(0) { (r, u) -> Int in
            let i = Int(u)
            return i > 64 ? (100 * r + i - 55) % 97: (10 * r + i - 48) % 97
        }

        return remainder == 1
    }
}

public extension String {
    func recognizeBankInfo() -> ShebaResult? {
        if !self.validateIranianSheba() {
            return nil
        }

        let bankCode = BankCode()
        for bank in bankCode.bankCodes {
            if self.prefix(10).contains(bank.key) {
                return bank.value
            }
        }

        return nil
    }
}
