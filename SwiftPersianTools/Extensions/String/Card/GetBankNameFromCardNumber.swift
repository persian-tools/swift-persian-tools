//
//  GetBankNameFromCardNumber.swift
//  SwiftPersianTools
//
//  Created by Saeed on 7/25/21.
//

import Foundation

public extension String {
    func getBankNameFromCardNumber() -> String? {

        if self.count < 16 {
            return nil
        }

        let bankCode = self.prefix(6)
        let bank = BanksCode().banksCode.filter { banksCode in
            if banksCode.code.contains(String(bankCode)) {
                return true
            }

            return false
        }

        guard let findBank = bank.first else {
            return nil
        }

        return findBank.title
    }
}
