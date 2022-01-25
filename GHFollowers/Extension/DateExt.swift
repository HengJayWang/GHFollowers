//
//  DateExt.swift
//  GHFollowers
//
//  Created by M100-M1MacMini on 2022/1/25.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat    = "MMM d, yyyy"
        return dateFormatter.string(from: self)
    }
    
}
