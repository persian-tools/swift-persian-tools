//
//  ConvertToPersian.swift
//  SwiftPersianTools
//
//  Created by Saeed on 6/18/21.
//

import Foundation

public extension Int {
    func convertToPersianText() -> String? {
        return SwiftPersianTools.convertNumberToPersianText(inputNumber: NSNumber(integerLiteral: self))
    }
}
