//
//  DatePickerView.swift
//  SystemViews
//
//  Created by 박진수 on 2021/01/28.
//

import SwiftUI

struct DatePickerView: View {
    let dateFormatter: DateFormatter = {
        let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .none
        return f
    }()
    
    @State private var selectedDate = Date()
    
    var targetDate: Date {
        selectedDate.addingTimeInterval(100 * 60 * 60 * 24)
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("\(selectedDate, formatter: dateFormatter) 부터")
                .font(.title)
            
            Text("100일째 되는 날은")
                .font(.title)
            
            Text("\(targetDate, formatter: dateFormatter) 입니다.")
                .font(.title)
            
            Spacer()
            
            // #1
            DatePicker(selection: $selectedDate,
                       in:...Date() ,
                       displayedComponents: [.date],
                       label: {
                        EmptyView()
                       })
                .labelsHidden()
                .datePickerStyle(WheelDatePickerStyle())
        }
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
            .environment(\.locale, Locale(identifier: "Ko_kr"))
    }
}
