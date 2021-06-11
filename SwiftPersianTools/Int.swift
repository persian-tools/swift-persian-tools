//
//  Int.swift
//  SwiftPersianTools
//
//  Created by Saeed on 5/5/21.
//

import Foundation

public extension Int {

    func convertToPersianText() -> String? {
        return SwiftPersianTools.convertNumberToPersianText(inputNumber: NSNumber(integerLiteral: self))
    }

    func convertToCommaSeperatedCurrency(symbol: CurrencySymbol) -> String {
        switch symbol {
        case .IRR, .Toman:
            return SwiftPersianTools.convertToRTLCurrency(input: self, symbol: symbol)
        case .Dollar:
            return SwiftPersianTools.convertToLTRCurrency(input: self, symbol: symbol)
        @unknown default:
            fatalError()
        }

    }

    
}
