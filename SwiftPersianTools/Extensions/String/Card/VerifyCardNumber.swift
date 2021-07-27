//
//  VerifyCardNumber.swift
//  SwiftPersianTools
//
//  Created by Saeed on 6/18/21.
//

import Foundation

public extension String {
    func verifyCardNumber() -> Bool {
        if self.count < 16 {
            return false
        }

        var radix = 0
        var subDigit = 0
        var sum = 0
        var index = 0

        for number in self {
            radix = index % 2 == 0 ? 2: 1
            guard let intNumber = Int("\(number)") else {
                return false
            }
            subDigit = intNumber * radix
            sum += subDigit > 9 ? subDigit - 9: subDigit

            index += 1
        }

        return sum % 10 == 0
    }
}
