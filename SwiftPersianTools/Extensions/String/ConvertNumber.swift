//
//  ConvertNumber.swift
//  SwiftPersianTools
//
//  Created by Saeed on 6/23/21.
//

import Foundation

public extension String {
    func digitsEntoFa() -> String {
        let numbers = ["0": "۰","1": "۱","2": "۲","3": "۳","4": "۴","5": "۵","6": "۶","7": "۷","8": "۸","9": "۹"]
        var result = self
        numbers.map { result = result.replacingOccurrences(of: $0, with: $1)}
        return result
    }

    func digitsEntoAr() -> String {
        let numbers = ["0": "۰","1": "۱","2": "۲","3": "۳","4": "٤","5": "٥","6": "٦","7": "۷","8": "۸","9": "۹"]
        var result = self
        numbers.map { result = result.replacingOccurrences(of: $0, with: $1)}
        return result
    }

    func digitsFatoEn() -> String {
        let numbers = ["0": "۰","1": "۱","2": "۲","3": "۳","4": "۴","5": "۵","6": "۶","7": "۷","8": "۸","9": "۹"]
        var result = self
        numbers.map { result = result.replacingOccurrences(of: $1, with: $0)}
        return result
    }
}
