//
//  ContextMenuBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 29.09.2025.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = .blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftul Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
            
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor).cornerRadius(30)
        .contextMenu {
            Button {
                backgroundColor = .yellow
            } label: {
                Label("Share post", systemImage: "square.and.arrow.up")
            }
            
            Button {
                backgroundColor = .red
            } label: {
                Text("Report post")
            }
            
            Button {
                backgroundColor = .green
            } label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            }

        }
    }
}

#Preview {
    ContextMenuBootcamp()
}
