//
//  ModelBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 10.10.2025.
//

import SwiftUI


struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Yernur Adilbek", userName: "yerosh", followerCount: 10, isVerified: true),
        UserModel(displayName: "Bakdaulet Kaldanbekov", userName: "bakda", followerCount: 40, isVerified: false),
        UserModel(displayName: "Kuanysh Kairbekov", userName: "kuka", followerCount: 30, isVerified: false),
        UserModel(displayName: "Aidyn Salam", userName: "aidoha", followerCount: 20, isVerified: true)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Follower")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
//            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Users")
        }
    }
}

#Preview {
    ModelBootcamp()
}
