//
//  SwiftPersianTools.swift
//  SwiftPersianTools
//
//  Created by Saeed on 5/5/21.
//

import Foundation

internal class SwiftPersianTools {

    class func convertNumberToPersianText(inputNumber: NSNumber) -> String? {
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        formatter.locale = Locale(identifier: "fa_IR")
        return formatter.string(from: inputNumber)
    }

    class func convertToRTLCurrency(input: Int, symbol: CurrencySymbol) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = NumberFormatter.Style.decimal

        let formattedCurrency = formatter.string(for: input)
        return "\(formattedCurrency ?? "") \(symbol.rawValue)"
    }

    class func convertToLTRCurrency(input: Int, symbol: CurrencySymbol) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = NumberFormatter.Style.decimal

        let formattedCurrency = formatter.string(for: input)
        return "\(symbol.rawValue)\(formattedCurrency ?? "")"
    }

    class func removeComma(from input: String) -> String {
        return input.replacingOccurrences(of: ",", with: "").replacingOccurrences(of: "٫", with: "")
    }

    class func addComma(to input: String) -> String? {
        guard
            let double = Double(input)
            else { return nil }

        return addComma(to: double)
    }

    class func addComma(to input: Int) -> String? {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.locale = Locale(identifier: "fa_IR")

        guard
            let outputString = formatter.string(from: NSNumber(value: input))
            else { return nil }

        return outputString
    }

    class func addComma(to input: Double) -> String? {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.locale = Locale(identifier: "fa_IR")

        guard
            let outputString = formatter.string(from: NSNumber(value: input))
            else { return nil }

        return outputString
    }
}
