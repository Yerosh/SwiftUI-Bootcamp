//
//  AsyncImageBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 15.10.2025.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://www.pix-star.com/blog/wp-content/uploads/2021/05/digital-photo-frames.jpg")
    
    var body: some View {
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .frame(width: 300, height: 300)
                    .cornerRadius(20)
                    .scaledToFit()
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
        
        AsyncImage(url: url) { returnedImage in
            returnedImage
                .resizable()
                .frame(width: 300, height: 300)
                .cornerRadius(20)
                .scaledToFit()
        } placeholder: {
            ProgressView()
        }

    }
}

#Preview {
    AsyncImageBootcamp()
}
