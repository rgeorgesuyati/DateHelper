//
//  DateFormatingHelper.swift
//  Bolder
//
//  Created by Rijo George on 2/21/17.
//  Copyright © 2017 Rijo George. All rights reserved.
//

import Foundation


extension DateFormatter {
    
    convenience init (format: String) {
        self.init()
        dateFormat = format
        locale = Locale.current
    }
}

extension String {
    
    func toDate () -> Date? {
        let format = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"

        return DateFormatter(format: format).date(from: self)
    }
    
    func toReadableDate () -> Date? {
        let format = "dd MMMM yyyy"
        return DateFormatter(format: format).date(from: self)
    }
    
    func toDateString (inputFormat: String, outputFormat:String) -> String? {
        if let date = toDate() {
            return DateFormatter(format: outputFormat).string(from: date)
        }
        return nil
    }
}

extension Date {
    func toString () -> String? {
        let format = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        return DateFormatter(format: format).string(from: self)
    }
    func toReadableString () -> String? {
        let format = "dd MMMM yyyy"
        return DateFormatter(format: format).string(from: self)
    }
}
