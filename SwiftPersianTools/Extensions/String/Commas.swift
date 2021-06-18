//
//  Commas.swift
//  SwiftPersianTools
//
//  Created by Saeed on 6/18/21.
//

import Foundation

public extension String {
    func removeComma() -> String {
        return SwiftPersianTools.removeComma(from: self)
    }

    func addComma() -> String? {
        return SwiftPersianTools.addComma(to: self.convertPersianNumberToEnglish())
    }
}
