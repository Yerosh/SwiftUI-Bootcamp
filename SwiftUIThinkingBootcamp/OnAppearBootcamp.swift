//
//  OnAppearBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 07.10.2025.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText: String = "Starting text."
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                               count += 1
                            }
                            .onDisappear {
                                count -= 1
                            }
                    }
                }
            }
            .navigationTitle("On Appear: \(count)")
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
