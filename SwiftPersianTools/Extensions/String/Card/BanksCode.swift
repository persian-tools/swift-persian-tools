//
//  BankesCode.swift
//  SwiftPersianTools
//
//  Created by Saeed on 7/25/21.
//

import Foundation

struct BanksCodeStruct {
    var code: [String]
    var title: String
}

struct BanksCode {
    var banksCode: [BanksCodeStruct]

    init() {
        self.banksCode = []
        self.banksCode.append(BanksCodeStruct(code: ["636214"], title: "بانک آینده"))
        self.banksCode.append(BanksCodeStruct(code: ["627412"], title: "بانک اقتصاد نوین"))
        self.banksCode.append(BanksCodeStruct(code: ["627381"], title: "بانک انصار"))
        self.banksCode.append(BanksCodeStruct(code: ["505785"], title: "بانک ایران زمین"))
        self.banksCode.append(BanksCodeStruct(code: ["622106", "627884"], title: "بانک پارسیان"))
        self.banksCode.append(BanksCodeStruct(code: ["502229", "639347"], title: "بانک پاسارگاد"))
        self.banksCode.append(BanksCodeStruct(code: ["627760"], title: "پست بانک ایران"))
        self.banksCode.append(BanksCodeStruct(code: ["585983", "627353"], title: "بانک تجارت"))
        self.banksCode.append(BanksCodeStruct(code: ["502908"], title: "بانک توسعه تعاون"))
        self.banksCode.append(BanksCodeStruct(code: ["207177", "627648"], title: "بانک توسعه صادرات"))
        self.banksCode.append(BanksCodeStruct(code: ["636949"], title: "بانک حکمت ایرانیان"))
        self.banksCode.append(BanksCodeStruct(code: ["585949"], title: "بانک خاورمیانه"))
        self.banksCode.append(BanksCodeStruct(code: ["502938"], title: "بانک دی"))
        self.banksCode.append(BanksCodeStruct(code: ["504172"], title: "بانک رسالت"))
        self.banksCode.append(BanksCodeStruct(code: ["589463"], title: "بانک رفاه کارگران"))
        self.banksCode.append(BanksCodeStruct(code: ["621986"], title: "بانک سامان"))
        self.banksCode.append(BanksCodeStruct(code: ["589210"], title: "بانک سپه"))
        self.banksCode.append(BanksCodeStruct(code: ["639607"], title: "بانک سرمایه"))
        self.banksCode.append(BanksCodeStruct(code: ["639346"], title: "بانک سینا"))
        self.banksCode.append(BanksCodeStruct(code: ["502806"], title: "بانک شهر"))
        self.banksCode.append(BanksCodeStruct(code: ["603769", "903769"], title: "بانک صادرات ایران"))
        self.banksCode.append(BanksCodeStruct(code: ["627961"], title: "بانک صنعت و معدن"))
        self.banksCode.append(BanksCodeStruct(code: ["639370"], title: "بانک قرض الحسنه مهر"))
        self.banksCode.append(BanksCodeStruct(code: ["639599"], title: "بانک قوامین"))
        self.banksCode.append(BanksCodeStruct(code: ["627488"], title: "بانک کارآفرین"))
        self.banksCode.append(BanksCodeStruct(code: ["603770", "639217"], title: "بانک کشاورزی"))
        self.banksCode.append(BanksCodeStruct(code: ["505416", "505426"], title: "بانک گردشگری"))
        self.banksCode.append(BanksCodeStruct(code: ["636797"], title: "بانک مرکزی ایران"))
        self.banksCode.append(BanksCodeStruct(code: ["628023"], title: "بانک مسکن"))
        self.banksCode.append(BanksCodeStruct(code: ["610433", "991975"], title: "بانک ملت"))
        self.banksCode.append(BanksCodeStruct(code: ["170019", "603799"], title: "بانک ملی ایران"))
        self.banksCode.append(BanksCodeStruct(code: ["606373"], title: "بانک مهر ایران"))
        self.banksCode.append(BanksCodeStruct(code: ["505801"], title: "موسسه کوثر"))
        self.banksCode.append(BanksCodeStruct(code: ["606256"], title: "موسسه اعتباری ملل"))
        self.banksCode.append(BanksCodeStruct(code: ["628157"], title: "موسسه اعتباری توسعه"))
    }
}
