//
//  PopoverBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 21.09.2025.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack {
                Button {
                    showNewScreen.toggle()
                } label: {
                    Text("Button")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding(20)
                        .background(Color.white.cornerRadius(10))
                }
            }
            
            // MARK: Method 1 - SHEET
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
            
            // MARK: Method 2 - TRANSITION
//                ZStack {
//                    if showNewScreen {
//                        NewScreen(showNewScreen: $showNewScreen)
//                            .padding(.top, 100)
//                            .transition(.move(edge: .bottom))
//                            .animation(.spring())
//                    }
//                }
//                .zIndex(2.0)
            
            // MARK: Method 3 - ANIMATION OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
                
            
            
        }
    }
}




struct NewScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple.ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}



#Preview {
    PopoverBootcamp()
}
