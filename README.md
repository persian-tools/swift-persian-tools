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
-   [Add and remove commas to numbers](#add-and-remove-commas).
-   [Convert Persian numbers to Arabic or English numbers and vice versa](#convert-persian-numbers-to-arabic-or-english-numbers-and-vice-versa).


## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate SwiftPersianTools into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'SwiftPersianTools'
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
