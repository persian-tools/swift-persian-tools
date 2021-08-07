//
//  OperatorModel.swift
//  SwiftPersianTools
//
//  Created by Saeed on 8/7/21.
//

import Foundation

public struct OperatorModel {
    var province: [String]
    var base: String
    var model: String?
    var type: [PhoneNumberType]
    var prefix: String
    var operatorName: Operators
}

enum Operators: String {
    case Irancell = "ایرانسل"
    case ShatelMobile = "شاتل موبایل"
    case MCI = "همراه اول"
    case Taliya = "تالیا"
    case Rightel = "رایتل"
}

enum PhoneNumberType {
    case Permanent
    case Credit
}

struct OperatorsList {
    var operatorsList: [OperatorModel]

    init() {
        operatorsList = []

        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: nil,
                                           type: [.Permanent, .Credit], prefix: "910", operatorName: .MCI))
        operatorsList.append(OperatorModel(province: ["آذربایجان شرقی", "اردبیل", "اصفهان"], base: "آذربایجان غربی", model: nil, type: [.Permanent, .Credit], prefix: "914", operatorName: .MCI))
        operatorsList.append(OperatorModel(province: ["گلستان", "گیلان"], base: "مازندران", model: nil, type: [.Permanent, .Credit], prefix: "911", operatorName: .MCI))
        operatorsList.append(OperatorModel(province: ["البرز", "زنجان", "سمنان", "قزوین", "قم", "برخی از شهرستان های استان مرکزی"], base: "تهران", model: nil, type: [.Permanent], prefix: "912", operatorName: .MCI))
        operatorsList.append(OperatorModel(province: ["یزد", "چهارمحال و بختیاری", "کرمان"], base: "اصفهان", model: nil, type: [.Permanent, .Credit], prefix: "913", operatorName: .MCI))
        operatorsList.append(OperatorModel(province: ["خراسان شمالی", "خراسان جنوبی", "سیستان و بلوچستان"], base: "خراسان رضوی", model: nil, type: [.Permanent, .Credit], prefix: "915", operatorName: .MCI))
        operatorsList.append(OperatorModel(province: ["لرستان", "فارس", "اصفهان"], base: "خوزستان", model: nil, type: [.Permanent, .Credit], prefix: "916", operatorName: .MCI))
        operatorsList.append(OperatorModel(province: ["بوشهر", "کهگیلویه و بویر احمد", "هرمزگان"], base: "فارس", model: nil, type: [.Permanent, .Credit], prefix: "917", operatorName: .MCI))
        operatorsList.append(OperatorModel(province: ["کردستان", "ایلام", "همدان"], base: "کرمانشاه", model: nil, type: [.Permanent, .Credit], prefix: "918", operatorName: .MCI))
        operatorsList.append(OperatorModel(province: ["البرز", "سمنان", "قم", "قزوین", "زنجان"], base: "تهران", model: nil,
                                           type: [.Credit], prefix: "919", operatorName: .MCI))
        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: nil,
                                           type: [.Credit], prefix: "990", operatorName: .MCI))
        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: nil,
                                           type: [.Credit], prefix: "994", operatorName: .MCI))
        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: nil,
                                           type: [.Permanent, .Credit], prefix: "991", operatorName: .MCI))
        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: nil,
                                           type: [.Credit], prefix: "992", operatorName: .MCI))
        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: nil,
                                           type: [.Credit], prefix: "993", operatorName: .MCI))

        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: nil,
                                           type: [.Credit], prefix: "932", operatorName: .Taliya))

        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: nil,
                                           type: [.Permanent], prefix: "920", operatorName: .Taliya))
        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: nil,
                                           type: [.Credit], prefix: "921", operatorName: .Taliya))
        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: nil,
                                           type: [.Credit], prefix: "922", operatorName: .Taliya))

    }
}

