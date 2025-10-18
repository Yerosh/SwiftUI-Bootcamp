//
//  ListSwipeActionsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 18.10.2025.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    let fruits: [String] = ["Apple", "Banana", "Orange", "Mango"]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0)
                    .swipeActions(edge: .trailing) {
                        Button("Archive") {}
                            .tint(.blue)
                        Button("Save") {}
                            .tint(.green)
                        Button("Junk") {}
                            .tint(.black)
                    }
                
                    .swipeActions(edge: .leading) {
                        Button("Share") {}
                            .tint(.yellow)
                    }
            }
        }
    }
}

#Preview {
    ListSwipeActionsBootcamp()
}
