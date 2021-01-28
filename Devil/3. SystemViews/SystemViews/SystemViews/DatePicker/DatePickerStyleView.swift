//
//  DatePickerStyleView.swift
//  SystemViews
//
//  Created by 박진수 on 2021/01/28.
//

import SwiftUI

struct DatePickerStyleView: View {
    @State private var selectedDate = Date()
    
    var body: some View {
        VStack {
            Text("DatePicker Styles")
                .font(.largeTitle)
            
            Spacer()
            
            Text("Date + Time")
                .font(.title)
            
            // #1
            DatePicker(selection: $selectedDate,
                       displayedComponents: [.date, .hourAndMinute],
                       label: {
                        Text("Selected Date")
                       })
                .labelsHidden()
                .datePickerStyle(WheelDatePickerStyle())
            
            
            
            
            Spacer()
            
            Text("Date Only")
                .font(.title)
            
            // #2
            DatePicker(selection: $selectedDate,
                       displayedComponents: [.date],
                       label: {
                        Text("Selected Date")
                       })
                .labelsHidden()
                .datePickerStyle(WheelDatePickerStyle())
            
            Spacer()
            
            Text("Time Only")
                .font(.title)
            
            // #3
            
            
            
            
        }
    }
}

struct DatePickerStyleView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerStyleView()
    }
}
