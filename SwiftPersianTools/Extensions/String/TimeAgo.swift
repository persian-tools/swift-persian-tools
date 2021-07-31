//
//  TimeAgo.swift
//  SwiftPersianTools
//
//  Created by Saeed on 7/31/21.
//

import Foundation

public extension String {
    func timeAgo() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
        formatter.calendar = Calendar(identifier: .persian)
        let convertedDate = formatter.date(from: self)

        let diff = convertedDate?.timeIntervalSinceNow
        print(diff)
        
        return ""
    }
}
