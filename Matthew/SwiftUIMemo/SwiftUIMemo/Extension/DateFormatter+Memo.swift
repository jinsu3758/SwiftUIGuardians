//
//  DateFormatter+Memo.swift
//  SwiftUIMemo
//
//  Created by devming on 2020/11/12.
//

import Foundation

extension DateFormatter {
    static let memoDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        formatter.locale = Locale(identifier: "Ko_kr")
        return formatter
    }()
}

extension DateFormatter: ObservableObject {
    
}
