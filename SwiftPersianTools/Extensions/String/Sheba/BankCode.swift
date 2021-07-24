//
//  BankCode.swift
//  SwiftPersianTools
//
//  Created by Saeed on 7/24/21.
//

import Foundation

public struct BankCode {
    public var bankCodes: Dictionary<String, ShebaResult>

    init() {
        bankCodes = [:]
        bankCodes["010"] = ShebaResult(name: "Central Bank of Iran", code: "010", nickname: "central-bank", persianName: "بانک مرکزی جمهوری اسلامی ایران", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["011"] = ShebaResult(name: "Sanat O Madan Bank", code: "011", nickname: "sanat-o-madan", persianName: "بانک صنعت و معدن", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["012"] = ShebaResult(name: "Mellat Bank", code: "012", nickname: "mellat", persianName:  "بانک ملت", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["013"] = ShebaResult(name: "Refah Bank", code: "013", nickname: "refah", persianName: "بانک رفاه کارگران", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["014"] = ShebaResult(name: "Maskan Bank", code: "014", nickname: "maskan", persianName: "بانک مسکن", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["015"] = ShebaResult(name: "Sepah Bank", code: "015", nickname: "sepah", persianName: "بانک سپه", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["016"] = ShebaResult(name: "Keshavarzi", code: "016", nickname: "keshavarzi", persianName: "بانک کشاورزی", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["017"] = ShebaResult(name: "Melli", code: "017", nickname: "melli", persianName: "بانک ملی ایران", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["018"] = ShebaResult(name: "Tejarat Bank", code: "018", nickname: "tejarat", persianName: "بانک تجارت", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["019"] = ShebaResult(name: "Saderat Bank", code: "019", nickname: "saderat", persianName: "بانک صادرات ایران", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["020"] = ShebaResult(name: "Tose Saderat Bank", code: "020", nickname: "tosee-saderat", persianName: "بانک توسعه صادرات", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["021"] = ShebaResult(name: "Post Bank", code: "021", nickname: "post", persianName: "پست بانک ایران", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["022"] = ShebaResult(name: "Tosee Taavon Bank", code: "022", nickname: "toose-taavon", persianName: "بانک توسعه تعاون", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["051"] = ShebaResult(name: "Tosee Bank", code: "051", nickname: "tosee", persianName: "موسسه اعتباری توسعه", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["052"] = ShebaResult(name: "Ghavamin Bank", code: "052", nickname: "ghavamin", persianName: "بانک قوامین", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["053"] = ShebaResult(name: "Karafarin Bank", code: "053", nickname: "karafarin", persianName: "بانک کارآفرین", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["019"] = ShebaResult(name: "Saderat Bank", code: "019", nickname: "saderat", persianName: "بانک صادرات ایران", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["054"] = ShebaResult(name: "Parsian Bank", code: "054", nickname: "parsian", persianName: "بانک پارسیان", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["055"] = ShebaResult(name: "Eghtesad Novin Bank", code: "055", nickname: "eghtesad-novin", persianName: "بانک اقتصاد نوین", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["056"] = ShebaResult(name: "Saman Bank", code: "056", nickname: "saman", persianName: "بانک پارسیان", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["057"] = ShebaResult(name: "Pasargad Bank", code: "057", nickname: "pasargad", persianName: "بانک پاسارگاد", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["058"] = ShebaResult(name: "Sarmayeh Bank", code: "058", nickname: "sarmayeh", persianName: "بانک سرمایه", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["059"] = ShebaResult(name: "Sina Bank", code: "059", nickname: "sina", persianName: "بانک سینا", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["060"] = ShebaResult(name: "Mehr Iran Bank", code: "060", nickname: "mehr-iran", persianName: "بانک مهر ایران", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["061"] = ShebaResult(name: "City Bank", code: "061", nickname: "shahr", persianName: "بانک شهر", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["062"] = ShebaResult(name: "Ayandeh Bank", code: "062", nickname: "ayandeh", persianName: "بانک آینده", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["063"] = ShebaResult(name: "Ansar Bank", code: "063", nickname: "ansar", persianName: "بانک انصار", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["064"] = ShebaResult(name: "Gardeshgari Bank", code: "064", nickname: "gardeshgari", persianName: "بانک گردشگری", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["065"] = ShebaResult(name: "Hekmat Iranian Bank", code: "065", nickname: "hekmat-iranian", persianName: "بانک حکمت ایرانیان", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["066"] = ShebaResult(name: "Dey Bank", code: "066", nickname: "dey", persianName: "بانک دی", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["069"] = ShebaResult(name: "Iran Zamin Bank", code: "069", nickname: "iran-zamin", persianName: "بانک ایران زمین", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["070"] = ShebaResult(name: "Resalat Bank", code: "070", nickname: "resalat", persianName: "بانک قرض الحسنه رسالت", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["073"] = ShebaResult(name: "Kosar Credit Institute", code: "073", nickname: "kosar", persianName: "موسسه اعتباری کوثر", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["075"] = ShebaResult(name: "Melal Credit Institute", code: "075", nickname: "melal", persianName: "موسسه اعتباری ملل", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["078"] = ShebaResult(name: "Middle East Bank", code: "078", nickname: "middle-east-bank", persianName: "بانک خاورمیانه", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["080"] = ShebaResult(name: "Noor Credit Institution", code: "080", nickname: "noor-bank", persianName: "موسسه اعتباری نور", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["079"] = ShebaResult(name: "Mehr Eqtesad Bank", code: "079", nickname: "mehr-eqtesad", persianName: "بانک مهر اقتصاد", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["090"] = ShebaResult(name: "Mehr Iran Bank", code: "090", nickname: "mehr-iran", persianName: "بانک مهر ایران", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)

        bankCodes["095"] = ShebaResult(name: "Iran and Venezuela Bank", code: "095", nickname: "dey", persianName: "بانک ایران و ونزوئلا", accountNumber: nil, accountNumberAvailable: false, formattedAccountNumber: nil)
    }
}
