//
//  Sheba.swift
//  SwiftPersianTools

import Foundation

public extension String {
    func validate() -> Bool {
        if self.count != 26 {
            return false
        }

        let shebaRegEx = "/IR[0-9]{2}([0-9]{3})[0-9]{19}/"
        let testCase = NSPredicate(format: "SELF MATCHES %@", shebaRegEx)
        if !testCase.evaluate(with: self) {
            return false
        }

        let code: [Character] = self.suffix(2)
        guard let firstChar = Int("\(code[0].utf8)") else {
            return false
        }

        guard let secondChar = Int("\(code[1].utf8)") else {
            return false
        }

        let d1 = firstChar - 65 + 10
        let d2 =  secondChar - 65 + 10

        var shebaCode = self[self.index(self.startIndex, offsetBy: 4)...]
        let afterCodeIndex = self.index(self.startIndex, offsetBy: 2)

        let d3 = self[afterCodeIndex..<self.index(afterCodeIndex, offsetBy: 2)]

        shebaCode = "\(d1)\(d2)\(d3)\(shebaCode)"

        return false
    }

    fileprivate func iso7064Mod97_10(iban: String)-> Int {
        var remainder = iban
        var block: String

        while remainder.count > 2 {
            block = remainder[remainder.startIndex...remainder.index(remainder.startIndex, offsetBy: 9)]
//            remainder = (Int(block) % 97) + remainder.suffix(block.count)
        }

    }
}
