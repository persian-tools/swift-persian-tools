//
//  Currency.swift
//  SwiftPersianTools
//
//  Created by Saeed on 6/18/21.
//

import Foundation

public extension Int {
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
