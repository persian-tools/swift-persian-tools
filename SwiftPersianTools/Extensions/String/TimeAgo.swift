//
//  TimeAgo.swift
//  SwiftPersianTools
//
//  Created by Saeed on 7/31/21.
//

import Foundation

public extension String {
    func timeAgo() -> String? {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
        formatter.calendar = Calendar(identifier: .persian)

        let convertedDate = formatter.date(from: self)

        let diff = convertedDate?.timeIntervalSinceNow

        guard let diffTime = diff else {
            return nil
        }

        var elapsedTime = Int(diffTime)

        if elapsedTime == 0 {
            return "اکنون"
        }

        let elapsedTitle = elapsedTime < 0 ? "قبل": "بعد"
        elapsedTime = elapsedTime.signum() == -1 ? elapsedTime * -1: elapsedTime
        
        if elapsedTime < SwiftPersianTools.minute {
            return String.init(format: "%@ در %d ثانیه", locale: Locale(identifier: "fa_IR"), elapsedTitle, elapsedTime)
        } else if elapsedTime < SwiftPersianTools.hour {
            elapsedTime = elapsedTime / SwiftPersianTools.minute
            return String.init(format: "%@ در %d دقیقه", locale: Locale(identifier: "fa_IR"), elapsedTitle, elapsedTime)
        } else if elapsedTime < SwiftPersianTools.day {
            elapsedTime = elapsedTime / SwiftPersianTools.hour
            return String.init(format: "%@ در %d ساعت", locale: Locale(identifier: "fa_IR"), elapsedTitle, elapsedTime)
        } else if elapsedTime < SwiftPersianTools.week {
            elapsedTime = elapsedTime / SwiftPersianTools.day
            return String.init(format: "%@ حدود %d روز", locale: Locale(identifier: "fa_IR"), elapsedTitle, elapsedTime)
        } else if elapsedTime < SwiftPersianTools.month {
            elapsedTime = elapsedTime / SwiftPersianTools.week
            return String.init(format: "%@ حدود %d هفته", locale: Locale(identifier: "fa_IR"), elapsedTitle, elapsedTime)
        } else if elapsedTime < SwiftPersianTools.year {
            elapsedTime = elapsedTime / SwiftPersianTools.month
            return String.init(format: "%@ حدود %d ماه", locale: Locale(identifier: "fa_IR"), elapsedTitle, elapsedTime)
        } else {
            elapsedTime = elapsedTime / SwiftPersianTools.year
            return String.init(format: "%@ حدود %d سال", locale: Locale(identifier: "fa_IR"), elapsedTitle, elapsedTime)
        }
    }
}
