//
//  TernaryBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 17.09.2025.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            
            Button(action: {
                isStartingState.toggle()
            }) {
                Text("Button: \(isStartingState.description)")
            }
            
            Text(isStartingState ? "Starting state" : "Not starting state")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 5)
                .fill(isStartingState ? Color.red : Color.green)
                .frame(
                    width: isStartingState ? 150 : 100,
                    height: isStartingState ? 150 : 100
                )
        }
        Spacer()
    }
}

#Preview {
    TernaryBootcamp()
}
