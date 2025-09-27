//
//  AlertBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 26.09.2025.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = .yellow
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var alertType: MyAlerts? = nil
    
    enum MyAlerts {
        case error
        case success
    }
    
    var body: some View {
        
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button 1") {
                    alertType = .error
//                    alertTitle = "Error uploading video"
//                    alertMessage = "Please try again later☺️"
                    showAlert.toggle()
                }
                
                Button("Button 2") {
                    alertType = .success
//                    alertTitle = "Successfully uploaded video"
//                    alertMessage = "Your video is now public🥳"
                    showAlert.toggle()
                }
                
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error"))
        case .success:
            return Alert(title: Text("This was a success"), dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        case nil:
            return Alert(title: Text("Error"))
        }
//        Alert(title: Text(alertTitle),
//              message: Text(alertMessage),
//              dismissButton: .default(Text("OK")))
//        Alert(
//            title: Text("This is the title"),
//            message: Text("This is the description"),
//            primaryButton: .destructive(Text("Change background"), action: {
//                backgroundColor = .green
//            }),
//            secondaryButton: .cancel())
    }
}

#Preview {
    AlertBootcamp()
}
