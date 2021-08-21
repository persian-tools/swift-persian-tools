//
//  PersianPhoneNumber.swift
//  SwiftPersianTools

import Foundation

public extension String {
    func isPersianPhoneNumber() -> Bool {
        let input = self.convertPersianNumberToEnglish()
        do {
            let regex = try NSRegularExpression(pattern: "(0|\\+98)?([ ]|-|[()]){0,2}9([ ]|-|[()]){0,2}(?:[0-9]([ ]|-|[()]){0,2}){9}", options: .caseInsensitive)
            return regex.firstMatch(in: input, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, input.count)) != nil
        } catch {
            return false
        }
    }

    func getPhoneNumberDetail() -> OperatorModel? {
        if !self.isPersianPhoneNumber() {
            return nil
        }

        let prefix = getPhonePrefix()

        for operatorItem in OperatorsList().operatorsList {
            if prefix == operatorItem.prefix {
                return operatorItem
            }
        }

        return nil
    }

    private func getPhonePrefix() -> String? {
        var phone = self
        do {
            let regex = try NSRegularExpression(pattern: "^(\\+98|98|0098|0)", options: .caseInsensitive)
            let range = NSMakeRange(0, self.count)
            phone = regex.stringByReplacingMatches(in: self, options: [], range: range, withTemplate: "")
        } catch {
            return nil
        }

        return String(phone.prefix(3))
    }

    func convertPersianNumberToEnglish() -> String {
        let returnString = self
            .replacingOccurrences(of: "۰", with: "0")
            .replacingOccurrences(of: "۱", with: "1")
            .replacingOccurrences(of: "۲", with: "2")
            .replacingOccurrences(of: "۳", with: "3")
            .replacingOccurrences(of: "۴", with: "4")
            .replacingOccurrences(of: "۵", with: "5")
            .replacingOccurrences(of: "۶", with: "6")
            .replacingOccurrences(of: "۷", with: "7")
            .replacingOccurrences(of: "۸", with: "8")
            .replacingOccurrences(of: "۹", with: "9")
            .replacingOccurrences(of: "،", with: ",")
            .replacingOccurrences(of: "٫", with: ".")
            .replacingOccurrences(of: ",", with: "")
            //Arabic Digits
            .replacingOccurrences(of: "٠", with: "0")
            .replacingOccurrences(of: "١", with: "1")
            .replacingOccurrences(of: "٢", with: "2")
            .replacingOccurrences(of: "٣", with: "3")
            .replacingOccurrences(of: "٤", with: "4")
            .replacingOccurrences(of: "٥", with: "5")
            .replacingOccurrences(of: "٦", with: "6")
            .replacingOccurrences(of: "٧", with: "7")
            .replacingOccurrences(of: "٨", with: "8")
            .replacingOccurrences(of: "٩", with: "9")

        return returnString
    }
}
