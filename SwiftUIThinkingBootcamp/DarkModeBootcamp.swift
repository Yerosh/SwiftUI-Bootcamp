//
//  DarkModeBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 06.10.2025.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This is color is PRIMARY")
                        .foregroundColor(.primary)
                    Text("This is color is SECONDARY")
                        .foregroundColor(.secondary)
                    Text("This is color is BLACK")
                        .foregroundColor(.black)
                    Text("This is color is WHITE")
                        .foregroundColor(.white)
                    
                    Text("This is color is globally adaptive")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This is color is locally adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

#Preview {
    DarkModeBootcamp()
}
