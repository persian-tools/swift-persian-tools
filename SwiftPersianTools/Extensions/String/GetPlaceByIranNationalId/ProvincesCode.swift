//
//  ProvincesCode.swift
//  SwiftPersianTools
//
//  Created by Saeed on 6/14/21.
//

import Foundation

struct ProvinceCodeStruct {
    var id: Int
    var province: String
}

struct ProvincesCode {
    var provinces: [ProvinceCodeStruct]

    init() {
        self.provinces = []
        self.provinces.append(ProvinceCodeStruct(id: 1, province: "آذربایجان شرقی"))
        self.provinces.append(ProvinceCodeStruct(id: 2, province: "آذربایجان غربی"))
        self.provinces.append(ProvinceCodeStruct(id: 3, province: "همدان"))
        self.provinces.append(ProvinceCodeStruct(id: 4, province: "یزد"))
        self.provinces.append(ProvinceCodeStruct(id: 5, province: "مرکزی"))
        self.provinces.append(ProvinceCodeStruct(id: 6, province: "هرمزگان"))
        self.provinces.append(ProvinceCodeStruct(id: 7, province: "لرستان"))
        self.provinces.append(ProvinceCodeStruct(id: 8, province: "مازندران"))
        self.provinces.append(ProvinceCodeStruct(id: 9, province: "گلستان"))
        self.provinces.append(ProvinceCodeStruct(id: 10, province: "گیلان"))
        self.provinces.append(ProvinceCodeStruct(id: 11, province: "کرمانشاه"))
        self.provinces.append(ProvinceCodeStruct(id: 12, province: "کهکیلویه و بویراحمد"))
        self.provinces.append(ProvinceCodeStruct(id: 13, province: "کردستان"))
        self.provinces.append(ProvinceCodeStruct(id: 14, province: "کرمان"))
        self.provinces.append(ProvinceCodeStruct(id: 15, province: "قزوین"))
        self.provinces.append(ProvinceCodeStruct(id: 16, province: "قم"))
        self.provinces.append(ProvinceCodeStruct(id: 17, province: "فارس"))
        self.provinces.append(ProvinceCodeStruct(id: 18, province: "سمنان"))
        self.provinces.append(ProvinceCodeStruct(id: 19, province: "سیستان و بلوچستان"))
        self.provinces.append(ProvinceCodeStruct(id: 20, province: "خوزستان"))
        self.provinces.append(ProvinceCodeStruct(id: 21, province: "خراسان رضوی"))
        self.provinces.append(ProvinceCodeStruct(id: 22, province: "خراسان شمالی"))
        self.provinces.append(ProvinceCodeStruct(id: 23, province: "چهارمحال و بختیاری"))
        self.provinces.append(ProvinceCodeStruct(id: 24, province: "خراسان جنوبی"))
        self.provinces.append(ProvinceCodeStruct(id: 25, province: "بوشهر"))
        self.provinces.append(ProvinceCodeStruct(id: 26, province: "تهران"))
        self.provinces.append(ProvinceCodeStruct(id: 27, province: "امور خارجه"))
        self.provinces.append(ProvinceCodeStruct(id: 28, province: "ایلام"))
        self.provinces.append(ProvinceCodeStruct(id: 29, province: "اردبیل"))
        self.provinces.append(ProvinceCodeStruct(id: 30, province: "اصفهان"))
    }
}
