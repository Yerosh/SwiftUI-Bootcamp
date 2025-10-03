//
//  DatePickerBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 03.10.2025.
//

import SwiftUI

struct DatePickerBootcamp: View {
    let title: String = "Select a Date"
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        var formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter
    }
    
    
    var body: some View {
//        DatePicker(title, selection: $selectedDate)
//        DatePicker(title, selection: $selectedDate, displayedComponents: [.date])
        VStack {
            Text("SELECTED DATE IS:")
            Text(dateFormatter.string(from: selectedDate))
            
            
            DatePicker(title, selection: $selectedDate, in: startingDate...endingDate)
                .datePickerStyle(CompactDatePickerStyle())
        }
    }
}

#Preview {
    DatePickerBootcamp()
}
