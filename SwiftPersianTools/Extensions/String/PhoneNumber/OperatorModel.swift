//
//  OperatorModel.swift
//  SwiftPersianTools

import Foundation

public struct OperatorModel {
    public var province: [String]
    public var base: String
    public var model: String?
    public var type: [PhoneNumberType]
    public var prefix: String
    public var operatorName: Operators
}

public enum Operators: String {
    case Irancell = "ایرانسل"
    case ShatelMobile = "شاتل موبایل"
    case MCI = "همراه اول"
    case Taliya = "تالیا"
    case Rightel = "رایتل"
}

public enum PhoneNumberType {
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
                                           type: [.Permanent], prefix: "920", operatorName: .Rightel))
        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: nil,
                                           type: [.Credit], prefix: "921", operatorName: .Rightel))
        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: nil,
                                           type: [.Credit], prefix: "922", operatorName: .Rightel))

        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: "سیم‌کارت کودک",
                                           type: [.Credit], prefix: "930", operatorName: .Irancell))
        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: "سیم‌کارت کودک",
                                           type: [.Credit], prefix: "933", operatorName: .Irancell))
        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: "سیم‌کارت کودک",
                                           type: [.Credit], prefix: "935", operatorName: .Irancell))
        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: "سیم‌کارت کودک",
                                           type: [.Credit], prefix: "936", operatorName: .Irancell))
        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: "سیم‌کارت کودک",
                                           type: [.Credit], prefix: "937", operatorName: .Irancell))
        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: "سیم‌کارت کودک",
                                           type: [.Credit], prefix: "938", operatorName: .Irancell))
        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: "سیم‌کارت کودک",
                                           type: [.Credit], prefix: "939", operatorName: .Irancell))
        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: "سیم‌کارت کودک",
                                           type: [.Credit], prefix: "901", operatorName: .Irancell))
        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: "سیم‌کارت کودک",
                                           type: [.Credit], prefix: "902", operatorName: .Irancell))
        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: "سیم‌کارت کودک",
                                           type: [.Credit], prefix: "903", operatorName: .Irancell))
        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: "سیم‌کارت کودک",
                                           type: [.Credit], prefix: "904", operatorName: .Irancell))
        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: "سیم‌کارت کودک",
                                           type: [.Credit], prefix: "905", operatorName: .Irancell))

        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: "TD-LTE",
                                           type: [.Credit], prefix: "941", operatorName: .Irancell))

        operatorsList.append(OperatorModel(province: [], base: "کشوری", model: nil,
                                           type: [.Credit], prefix: "998", operatorName: .ShatelMobile))
    }
}
