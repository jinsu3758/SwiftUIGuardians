//
//  DateFormaatterExtension.swift
//  SwiftUIMemo
//
//  Created by 박진수 on 2020/11/11.
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

extension DateFormatter: ObservableObject { }
