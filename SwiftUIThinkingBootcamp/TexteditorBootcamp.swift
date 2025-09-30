//
//  TexteditorBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 30.09.2025.
//

import SwiftUI

struct TexteditorBootcamp: View {
    
    @State var textEditortext: String = "This is the starting text."
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditortext)
                    .frame(height: 250)
                    .foregroundColor(.red)
                    .cornerRadius(10)
                Button {
                    savedText = textEditortext
                } label: {
                    Text("SAVE")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(10)
                }
                
                Text(savedText)
                Spacer()
            }
            .padding()
            .background(.green)
            .navigationTitle("TextEditor Bootcamp!")
        }
    }
}

#Preview {
    TexteditorBootcamp()
}
