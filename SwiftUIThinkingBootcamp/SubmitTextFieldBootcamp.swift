//
//  SubmitTextFieldBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 19.10.2025.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    
    @State var text: String = ""
    
    var body: some View {
        TextField("Placeholder", text: $text)
            .submitLabel(.continue)
            .onSubmit {
                print("something")
            }
        TextField("Placeholder", text: $text)
            .submitLabel(.next)
            .onSubmit {
                print("something")
            }
        TextField("Placeholder", text: $text)
            .submitLabel(.search)
            .onSubmit {
                print("something")
            }
    }
}

#Preview {
    SubmitTextFieldBootcamp()
}
