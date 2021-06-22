//
//  NationalId.swift
//  SwiftPersianTools
//
//  Created by Saeed on 6/18/21.
//

import Foundation

public extension String {
    func isValidIranianNationallCode() -> Bool {
        let digits = self.compactMap { Int(String($0)) }
        guard digits.count == 10 && digits.count == self.count else {
            return false
        }

        let check = digits[9]
        let sum = digits[0 ..< 9].enumerated().reduce(0) { $0 + $1.element * (10 - $1.offset) } % 11

        return sum < 2 ? check == sum : check + sum == 11
    }
}
