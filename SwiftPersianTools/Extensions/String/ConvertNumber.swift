//
//  ConvertNumber.swift
//  SwiftPersianTools
//
//  Created by Saeed on 6/23/21.
//

import Foundation

public extension String {
    func digitsEntoFa() -> String {
        let englishNumbers = ["0": "۰","1": "۱","2": "۲","3": "۳","4": "۴","5": "۵","6": "۶","7": "۷","8": "۸","9": "۹"]
        var result = self
        englishNumbers.map { result = result.replacingOccurrences(of: $0, with: $1)}
        return result
    }
}
