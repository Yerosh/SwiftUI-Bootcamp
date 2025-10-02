//
//  PickerBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 02.10.2025.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .blue
        
        let attributes: [NSAttributedString.Key : Any] = [
            .foregroundColor: UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        Picker(selection: $selection, label: Text("Filter")) {
            ForEach(filterOptions, id: \.self) { option in
                Text(option).tag(option)
            }
        }
        .pickerStyle(SegmentedPickerStyle())
        
//        Picker(selection: $selection) {
//            ForEach(filterOptions, id: \.self) { option in
//                Text(option).tag(option)
//            }
//        } label: {
//            HStack {
//                Text("Filter:")
//                Text(selection)
//            }
//            .font(.headline)
//            .foregroundColor(.white)
//            .padding()
//            .padding(.horizontal)
//            .background(.blue)
//            .cornerRadius(10)
//            .shadow(color: .blue.opacity(0.3), radius: 10, x: 0, y: 10)
//        }
//        .pickerStyle(MenuPickerStyle())

        
        
//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//            
//            Picker(
//                selection: $selection) {
//                    ForEach(18..<100) { age in
//                        Text("\(age)").tag("\(age)")
//                    }
//                    
//                } label: {
//                    Text("Picker")
//                }
//                .pickerStyle(WheelPickerStyle())
//        }

    }
}

#Preview {
    PickerBootcamp()
}
