//
//  CityCode.swift
//  SwiftPersianTools
//
//  Created by Saeed on 6/14/21.
//

import Foundation

struct CityCodeStruct {
    var parentId: Int
    var city: String
    var code: [Int]
}

struct CityCode {
    var cities: [CityCodeStruct]

    init() {
        self.cities = []
        self.cities.append(CityCodeStruct(parentId: 1, city: "آذرشهر", code: [169]))
        self.cities.append(CityCodeStruct(parentId: 1, city: "اسکو", code: [170]))
        self.cities.append(CityCodeStruct(parentId: 1, city: "اهر", code: [149, 150]))
        self.cities.append(CityCodeStruct(parentId: 1, city: "بستان آباد", code: [171]))
        self.cities.append(CityCodeStruct(parentId: 1, city: "بناب", code: [168]))
        self.cities.append(CityCodeStruct(parentId: 1, city: "تبریز", code: [136, 137, 138]))
        self.cities.append(CityCodeStruct(parentId: 1, city: "ترکمانچای", code: [545]))
        self.cities.append(CityCodeStruct(parentId: 1, city: "جلفا", code: [505]))
        self.cities.append(CityCodeStruct(parentId: 1, city: "چاروایماق", code: [636]))
        self.cities.append(CityCodeStruct(parentId: 1, city: "سراب", code: [164, 165]))
        self.cities.append(CityCodeStruct(parentId: 1, city: "شبستر", code: [172]))
        self.cities.append(CityCodeStruct(parentId: 1, city: "صوفیان", code: [623]))
        self.cities.append(CityCodeStruct(parentId: 1, city: "عجب شیر", code: [506]))
        self.cities.append(CityCodeStruct(parentId: 1, city: "کلیبر", code: [519]))
        self.cities.append(CityCodeStruct(parentId: 1, city: "مراغه", code: [154, 155]))
        self.cities.append(CityCodeStruct(parentId: 1, city: "ورزقان", code: [567]))
        self.cities.append(CityCodeStruct(parentId: 1, city: "هریس", code: [173]))
        self.cities.append(CityCodeStruct(parentId: 1, city: "هشترود", code: [159, 160]))
        self.cities.append(CityCodeStruct(parentId: 1, city: "هوراند", code: [604]))
        self.cities.append(CityCodeStruct(parentId: 2, city: "ارومیه", code: [274, 275]))
        self.cities.append(CityCodeStruct(parentId: 2, city: "اشنویه", code: [295]))

        self.cities.append(CityCodeStruct(parentId: 26, city: "شهرری", code: [049, 048]))
    }
}

