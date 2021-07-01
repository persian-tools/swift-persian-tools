<div align="center">
    <h1 align="center">Swift Persian tools</h1>
    <p align="center">Swift version of Persian Tools</p>

[![Build Status](https://travis-ci.com/saeed-rz/swift-persian-tools.svg?branch=master)](https://travis-ci.com/saeed-rz/swift-persian-tools)
[![codecov](https://codecov.io/gh/saeed-rz/swift-persian-tools/branch/master/graph/badge.svg?token=EBKWXN9LGK)](https://codecov.io/gh/saeed-rz/swift-persian-tools)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/saeed-rz/swift-persian-tools/blob/master/LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-orange.svg)](https://github.com/saeed-rz/swift-persian-tools/compare)
</div>
<hr />

## Features

-   [Convert Numbers to Persian words](#convert-numbers-to-persian-words).
-   [Add and remove commas to numbers](#add-and-remove-commas-to-numbers).
-   [Convert Persian numbers to Arabic or English numbers and vice versa](#convert-persian-numbers-to-arabic-or-english-numbers-and-vice-versa).
-   [Validate Iranian national number(code-e Melli)](#validate-iranian-national-numbercode-e-melli).
-   [Find city and province name by national code(code-e Melli)](#find-city-and-province-name-by-national-idcode-e-melli).
-   [Bill calculator](#bill-calculator).
-   [Check Iranian Sheba(IBAN) validation](#iranian-shebaiban).
-   [Validate Bank card number](#bank-number-validation).

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate SwiftPersianTools into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'SwiftPersianTools', '1.1.0'
```

## Usage

### Convert Numbers to Persian words
```swift
import SwiftPersianTools

let number: Int = 1546
number.convertToPersianText()   /// "یک هزار و پانصد و چهل و شش"

```

### Add and remove commas to numbers
```swift
import SwiftPersianTools

let strNumber = "9423511"
strNumber.addComma()   /// "۹٬۴۲۳٬۵۱۱"

let strNumber = "9,423,511"
strNumber.removeComma()   /// "9423511"
```

### Convert Persian numbers to Arabic or English numbers and vice versa
```swift
import SwiftPersianTools

"123۴۵۶".digitsEntoFa()   /// "۱۲۳۴۵۶"
"٤٥٦".digitsEntoFa()      /// "٤٥٦"
"12۴۵۶3".digitsEntoFa()   /// "۱۲۴۵۶۳"


"1234567891".digitsEntoAr() /// "۱۲۳٤٥٦۷۸۹۱"
"123٤٥٦".digitsEntoAr()     /// "۱۲۳٤٥٦"

"۱۲۳۴۵۶".digitsFatoEn()  /// "123456"
"456".digitsFatoEn()     /// "456"
"۱۲۴۵۶۳".digitsFatoEn()  /// "124563"

"٠١٢٣٤٥٦٧٨٩".digitsArtoFa()        /// "٠١٢٣۴۵۶٧٨٩"
"۸۹123۴٥".digitsArtoFa()           /// "۸۹123۴۵"
"Text ٠١٢٣٤٥٦٧٨٩".digitsArtoFa()   /// "Text ٠١٢٣۴۵۶٧٨٩"

"۰۱۲۳٤٥٦۷۸۹".digitsArtoEn()   /// "0123456789"
"۸۹123٤٥".digitsArtoEn()      /// "8912345"
```

### Validate Iranian national number(code-e Melli)
```swift
import SwiftPersianTools

var codeMelli = "0499370899"
codeMelli.isValidIranianNationallCode()   /// true

codeMelli = "0963695398"
codeMelli.isValidIranianNationallCode()   /// true

codeMelli = "0067749828"
codeMelli.isValidIranianNationallCode()   /// true

codeMelli = "0684159415"
codeMelli.isValidIranianNationallCode()   /// false
```

### Find city and province name by national-id(code-e Melli)
```swift
import SwiftPersianTools

var nationalId = "0499370899"
nationalId.getPlaceByIranNationalId()?.city   /// "شهرری"

nationalId = "0790419904"
nationalId.getPlaceByIranNationalId()?.city   /// "سبزوار"

"0084575948".getPlaceByIranNationalId()?.city /// "تهران مرکزی"

"0060495219".getPlaceByIranNationalId()?.city /// "تهران مرکزی"

"0671658506".getPlaceByIranNationalId()?.city /// "بجنورد"

"0643005846".getPlaceByIranNationalId()?.city /// "بیرجند"

"0906582709".getPlaceByIranNationalId()?.city /// "کاشمر"

"0451727304".getPlaceByIranNationalId()?.city /// "شمیران"

"0371359058".getPlaceByIranNationalId()?.city /// "قم"
```

### Bank number validation
```swift
import SwiftPersianTools

var cardNumber = "6037701689095443"
cardNumber.verifyCardNumber()   /// true

cardNumber = "6219861034529007"
cardNumber.verifyCardNumber()   /// true

cardNumber = "6219861034529008"
cardNumber.verifyCardNumber()   /// false

"6219861034529007002229988112233".verifyCardNumber()   /// false
```

### Bill calculator
| Method                  | Description                             | Return type
|---                	  |---	                                    |---
| `getResult`               | Result of bill calculated information	| BillResult
| `getAmount`  	          | Calculate Bill amount by payment id and bill id which entered by the Bill constructor | `Double`
| `getType`        	  | Get Bill provider type name         	| `String`
| `getBarcode`              | Calculate and get Bill's barcode        | `String`
| `verifyBill`        | Validate entered both Bill id and payment id, and return true if bill id and payment id relation was true | `Bool`
| `verifyBillId`      | Validate entered Bill id                | `Bool`
| `verifyBillPayment` | Validate entered Bill payment id        | `Bool`
```swift
import SwiftPersianTools

var bill = Bill(billId: "7748317800142", billPayment: "1770160").getResult()

Bill(billId: "1117753200140", billPayment: "12070160").getAmount()       /// 120000

Bill(billId: "1117753200140", billPayment: "12070160", currency: .toman) /// 12000

Bill(billId: "7748317800142", billPayment: "12070160").getType()         /// تلفن ثابت

Bill(billId: "9174639504124", billPayment: "12070160").getType()         /// برق

Bill(billId: "2050327604613", billPayment: "12070160").getType()         /// آب

Bill(billId: "9100074409151", billPayment: "12070160").getType()         /// تلفن همراه

Bill(billId: "7748317800105", billPayment: "12070160").getType()         /// unknown

Bill(billId: "7748317800142", billPayment: "1770160").getBarcode()       /// "77483178001420001770160"

Bill(billId: "7748317800142", billPayment: "1770160").verifyBillPayment() /// true

Bill(billId: "9174639504124", billPayment: "12908197").verifyBillPayment() /// false

Bill(billId: "7748317800142", billPayment: "1770160").verifyBillId       /// true

Bill(billId: "2234322344613", billPayment: "1070189").verifyBillId       /// false
```

### Iranian Sheba(IBAN)

- Check validation
```swift
import SwiftPersianTools

var sheba = "IR820540102680020817909002"
sheba.validateIranianSheba()   /// true

sheba = "IR01234567890123456789"
sheba.validateIranianSheba()   /// false
```

## License
[MIT](https://choosealicense.com/licenses/mit/)
