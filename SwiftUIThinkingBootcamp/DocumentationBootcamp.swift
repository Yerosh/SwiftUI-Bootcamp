//
//  DocumentationBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 06.10.2025.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    @State var data: [String] = [
        "Apples", "Banana", "Orange", "Pineapple"
    ]
    @State var showAlert: Bool = false
    
    
    // YERNUR - Working copy - things to do:
    /*
     1. test
     2. alert
     3. functions
     */
    
    // MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Hello")
                ForEach(data, id: \.self) { name in
                    Text(name)
                        .font(.headline)
                }
            }
            .navigationTitle("Documentation")
            .navigationBarItems(trailing: Button("Alert", action: {
                showAlert.toggle()
            }))
            .alert(isPresented: $showAlert) {
                getAlert(text: "This is the alert!")
            }
        }
    }
    
    
    
    // MARK: FUNCTIONS
    /// Gets an alert with a specified little.
    ///
    ///This function creates and returns an alert immediately. The alert will have a title based on the text parameter but it will NOT have a message
    ///```
    ///getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    ///```
    /// - Warning: There is no additional message in this Alert
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns an alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: PREVIEW
#Preview {
    DocumentationBootcamp()
}
