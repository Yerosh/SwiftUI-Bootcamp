//
//  TabViewBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 05.10.2025.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 0
    let icons: [String] = ["house", "music.note", "bookmark.fill"]
    
    var body: some View {
        
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [.red, .blue]), center: .center, startRadius: 5, endRadius: 200)
        )
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        
        
//        TabView(selection: $selectedTab) {
//            
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house")
//                    Text("Home")
//                }
//                .tag(0)
//            
//            Text("Browse Tab")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            
//            Text("Profile tab")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
//        .accentColor(.green)
    }
}

#Preview {
    TabViewBootcamp()
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea(edges: .all)
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to Profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background()
                        .foregroundColor(.gray)
                        .cornerRadius(10)

                }
            }

        }
    }
}
