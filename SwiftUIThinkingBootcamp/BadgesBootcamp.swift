//
//  BadgesBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 18.10.2025.
//

import SwiftUI

// List
// TabView
struct BadgesBootcamp: View {
    
    
    
    var body: some View {
        TabView {
            List {
                Text("First Item")
                    .badge(1)
                Text("Second Item")
                    .badge("Hello")
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favorites")
                }
                .badge(3)
            
            Color.green
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .badge("Subscribe")
            
            Color.blue
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
                .badge(2)
        }
    }
}

#Preview {
    BadgesBootcamp()
}
