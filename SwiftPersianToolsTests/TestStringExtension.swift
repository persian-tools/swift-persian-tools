//
//  TestStringExtension.swift
//  SwiftPersianToolsTests

import XCTest

class TestStringExtension: XCTestCase {

    func testRemoveComma() throws {
        var stringNumber = "100,234,433"

        XCTAssertEqual(stringNumber.removeComma(), "100234433")

        stringNumber = "۲٫۱۰۰"

        XCTAssertEqual(stringNumber.removeComma(), "۲۱۰۰")

        stringNumber = "23456"
        stringNumber = stringNumber.addComma() ?? ""
        XCTAssertEqual(stringNumber.removeComma(), "۲۳۴۵۶")
    }

    func testAddComma() throws {
        var stringNumber = "23456"

        XCTAssertEqual(stringNumber.addComma(), "۲۳٬۴۵۶")

        stringNumber = "۱۲۳۷۸۹"

        XCTAssertEqual(stringNumber.addComma(), "۱۲۳٬۷۸۹")
    }

    func testValidateNationalCode() throws {
        var codeMelli = "0499370899"

        XCTAssertTrue(codeMelli.isValidIranianNationallCode())

        codeMelli = "0963695398"
        XCTAssertTrue(codeMelli.isValidIranianNationallCode())

        codeMelli = "0067749828"
        XCTAssertTrue(codeMelli.isValidIranianNationallCode())

        codeMelli = "0684159415"
        XCTAssertFalse(codeMelli.isValidIranianNationallCode())
    }

    func testVerifyCardNumber() throws {
        var cardNumber = "6037701689095443"
        XCTAssertTrue(cardNumber.verifyCardNumber())

        cardNumber = "6219861034529007"
        XCTAssertTrue(cardNumber.verifyCardNumber())

        cardNumber = "6219861034529008"
        XCTAssertFalse(cardNumber.verifyCardNumber())

        XCTAssertFalse("6219861034529007002229988112233".verifyCardNumber())
    }

    func testGetPlaceByNationalId() throws {
        var nationalId = "0499370899"
        XCTAssertEqual(nationalId.getPlaceByIranNationalId()?.city, "شهرری")

        nationalId = "0790419904"
        XCTAssertEqual(nationalId.getPlaceByIranNationalId()?.city, "سبزوار")

        XCTAssertEqual("0084575948".getPlaceByIranNationalId()?.city, "تهران مرکزی")

        XCTAssertEqual("0060495219".getPlaceByIranNationalId()?.city, "تهران مرکزی")

        XCTAssertEqual("0084545943".getPlaceByIranNationalId()?.city, "تهران مرکزی")

        XCTAssertEqual("0671658506".getPlaceByIranNationalId()?.city, "بجنورد")

        XCTAssertEqual("0671658506".getPlaceByIranNationalId()?.city, "بجنورد")

        XCTAssertEqual("0643005846".getPlaceByIranNationalId()?.city, "بیرجند")

        XCTAssertEqual("0906582709".getPlaceByIranNationalId()?.city, "کاشمر")

        XCTAssertEqual("0451727304".getPlaceByIranNationalId()?.city, "شمیران")

        XCTAssertEqual("0371359058".getPlaceByIranNationalId()?.city, "قم")
    }

    func testValidateSheba() throws {
        var sheba = "IR820540102680020817909002"
        XCTAssertTrue(sheba.validateIranianSheba())

        sheba = "IR01234567890123456789"
        XCTAssertFalse(sheba.validateIranianSheba())
    }

    func testConvertEntoFa() throws {
        XCTAssertEqual("123۴۵۶".digitsEntoFa(), "۱۲۳۴۵۶")
        XCTAssertEqual("٤٥٦".digitsEntoFa(), "٤٥٦")
        XCTAssertEqual("12۴۵۶3".digitsEntoFa(), "۱۲۴۵۶۳")

        XCTAssertEqual("1234567891".digitsEntoAr(), "۱۲۳٤٥٦۷۸۹۱")
        XCTAssertEqual("123٤٥٦".digitsEntoAr(), "۱۲۳٤٥٦")

        XCTAssertEqual("۱۲۳۴۵۶".digitsFatoEn(), "123456")
        XCTAssertEqual("456".digitsFatoEn(), "456")
        XCTAssertEqual("۱۲۴۵۶۳".digitsFatoEn(), "124563")

        XCTAssertEqual("٠١٢٣٤٥٦٧٨٩".digitsArtoFa(), "٠١٢٣۴۵۶٧٨٩")
        XCTAssertEqual("۸۹123۴٥".digitsArtoFa(), "۸۹123۴۵")
        XCTAssertEqual("Text ٠١٢٣٤٥٦٧٨٩".digitsArtoFa(), "Text ٠١٢٣۴۵۶٧٨٩")

        XCTAssertEqual("۰۱۲۳٤٥٦۷۸۹".digitsArtoEn(), "0123456789")
        XCTAssertEqual("۸۹123٤٥".digitsArtoEn(), "8912345")
    }

    func testRecognizeBankFromSheba() throws {
        let sheba = "IR820540102680020817909002"
        XCTAssertTrue(sheba.recognizeBankInfo()?.code == "054")
    }

    func testFindBankFromCardNumber() throws {
        let cardNumber = "6219861034529007"
        XCTAssertTrue(cardNumber.getBankNameFromCardNumber() == "بانک سامان")
    }

    func testTimeAgo() throws {
        let dateComponents: Set<Calendar.Component> = [Calendar.Component.year, Calendar.Component.month, Calendar.Component.day, Calendar.Component.hour, Calendar.Component.minute, Calendar.Component.second]
        var testDate = Date(timeIntervalSinceNow: -50)
        let calendar = Calendar(identifier: .persian)
        var dateComponent = calendar.dateComponents(dateComponents, from: testDate)

        var date = "\(dateComponent.year ?? 0)/\(dateComponent.month ?? 0)/\(dateComponent.day ?? 0) \(dateComponent.hour ?? 0):\(dateComponent.minute ?? 0):\(dateComponent.second ?? 0)"
        XCTAssertEqual(date.timeAgo(), "⁨قبل⁩ در ۵۰ ثانیه")

        testDate = Date(timeIntervalSinceNow: -300)
        dateComponent = calendar.dateComponents(dateComponents, from: testDate)
        date = "\(dateComponent.year ?? 0)/\(dateComponent.month ?? 0)/\(dateComponent.day ?? 0) \(dateComponent.hour ?? 0):\(dateComponent.minute ?? 0):\(dateComponent.second ?? 0)"
        XCTAssertEqual(date.timeAgo(), "⁨قبل⁩ در ۵ دقیقه")

        testDate = Date(timeIntervalSinceNow: 3700)
        dateComponent = calendar.dateComponents(dateComponents, from: testDate)
        date = "\(dateComponent.year ?? 0)/\(dateComponent.month ?? 0)/\(dateComponent.day ?? 0) \(dateComponent.hour ?? 0):\(dateComponent.minute ?? 0):\(dateComponent.second ?? 0)"
        XCTAssertEqual(date.timeAgo(), "⁨بعد⁩ در ۱ ساعت")

        testDate = Date(timeIntervalSinceNow: 87000)
        dateComponent = calendar.dateComponents(dateComponents, from: testDate)
        date = "\(dateComponent.year ?? 0)/\(dateComponent.month ?? 0)/\(dateComponent.day ?? 0) \(dateComponent.hour ?? 0):\(dateComponent.minute ?? 0):\(dateComponent.second ?? 0)"
        XCTAssertEqual(date.timeAgo(), "⁨بعد⁩ حدود ۱ روز")

        testDate = Date(timeIntervalSinceNow: 605800)
        dateComponent = calendar.dateComponents(dateComponents, from: testDate)
        date = "\(dateComponent.year ?? 0)/\(dateComponent.month ?? 0)/\(dateComponent.day ?? 0) \(dateComponent.hour ?? 0):\(dateComponent.minute ?? 0):\(dateComponent.second ?? 0)"
        XCTAssertEqual(date.timeAgo(), "⁨بعد⁩ حدود ۱ هفته")

        testDate = Date(timeIntervalSinceNow: 2610000)
        dateComponent = calendar.dateComponents(dateComponents, from: testDate)
        date = "\(dateComponent.year ?? 0)/\(dateComponent.month ?? 0)/\(dateComponent.day ?? 0) \(dateComponent.hour ?? 0):\(dateComponent.minute ?? 0):\(dateComponent.second ?? 0)"
        XCTAssertEqual(date.timeAgo(), "⁨بعد⁩ حدود ۱ ماه")

        testDate = Date(timeIntervalSinceNow: 31755000)
        dateComponent = calendar.dateComponents(dateComponents, from: testDate)
        date = "\(dateComponent.year ?? 0)/\(dateComponent.month ?? 0)/\(dateComponent.day ?? 0) \(dateComponent.hour ?? 0):\(dateComponent.minute ?? 0):\(dateComponent.second ?? 0)"
        XCTAssertEqual(date.timeAgo(), "⁨بعد⁩ حدود ۱ سال")
    }

    func testPhoneNumberDetail() throws {
        var phoneNumber = "9891298567098"
        XCTAssertTrue(phoneNumber.getPhoneNumberDetail()?.province.contains("قم") ?? false)

        phoneNumber = "09022002580"
        XCTAssertTrue(phoneNumber.getPhoneNumberDetail()?.operatorName.rawValue == Operators.Irancell.rawValue)

        phoneNumber = "09981000000"
        XCTAssertTrue(phoneNumber.getPhoneNumberDetail()?.operatorName.rawValue == Operators.ShatelMobile.rawValue)
    }

    func testHasLetter() throws {
        var str = "سلام ۱۲۳"
        XCTAssertTrue(str.hasLetters)

        str = "۱۲۳"
        XCTAssertFalse(str.hasLetters)
    }

    func testHasNumber() throws {
        var str = "سلام ۱۲۳"
        XCTAssertTrue(str.hasNumbers)

        str = "سلام"
        XCTAssertFalse(str.hasNumbers)
    }

    func testValidateUrl() throws {
        var url = "https://google.com"
        XCTAssertTrue(url.isValidUrl)

        url = "google"
        XCTAssertFalse(url.isValidUrl)
    }
}
