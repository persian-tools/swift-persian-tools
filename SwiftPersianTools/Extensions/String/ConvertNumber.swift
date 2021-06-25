//
//  ConvertNumber.swift
//  SwiftPersianTools

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

    func digitsArtoFa() -> String {
        let numbers = ["۰": "۰","۱": "۱","۲": "۲","۳": "۳","٤": "۴","٥": "۵","٦": "۶","۷": "۷","۸": "۸","۹": "۹"]
        var result = self
        numbers.map { result = result.replacingOccurrences(of: $0, with: $1)}
        return result
    }

    func digitsArtoEn() -> String {
        let numbers = ["0": "۰","1": "۱","2": "۲","3": "۳","4": "٤","5": "٥","6": "٦","7": "۷","8": "۸","9": "۹"]
        var result = self
        numbers.map { result = result.replacingOccurrences(of: $1, with: $0)}
        return result
    }
}
