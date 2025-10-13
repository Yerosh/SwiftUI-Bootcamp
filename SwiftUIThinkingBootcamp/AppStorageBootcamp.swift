//
//  AppStorageBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 13.10.2025.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Enter your username")
            
            Button("Save".uppercased()) {
                let name = "Yernur"
                currentUserName = name
            }
        }
    }
}

#Preview {
    AppStorageBootcamp()
}
