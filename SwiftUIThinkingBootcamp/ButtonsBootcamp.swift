//
//  ButtonsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 12.09.2025.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title = "This is title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            
            Button("Press me!") {
                self.title = "Button 1 was pressed"
            }
            .accentColor(.red)
            
            Button {
                self.title = "Button 2 was pressed"
            } label: {
                Text("SAVE")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
            
            
            Button {
                self.title = "Button 3 was pressed"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            }

            
            Button {
                self.title = "Button 4 was pressed"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 2)
                    )
            }


        }
    }
}

#Preview {
    ButtonsBootcamp()
}
