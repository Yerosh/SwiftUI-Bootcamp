//
//  ActionsheetBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 28.09.2025.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isOtherPost
        case isMyPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@_adilbeck")
                Spacer()
                Button {
                    actionSheetOption = .isOtherPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            
        }
        
        let reportButton: ActionSheet.Button = .default(Text("Report")) {
            
        }
        
        let deleteButton: ActionSheet.Button = .default(Text("Delete")) {
            
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        
        switch actionSheetOption {
        case .isOtherPost:
            return ActionSheet(
                title: Text("ActionSheet"),
                buttons: [shareButton, reportButton, cancelButton]
            )
        case .isMyPost:
            return ActionSheet(
                title: Text("ActionSheet"),
                buttons: [shareButton, reportButton, deleteButton,cancelButton]
            )
        }
        
//        ActionSheet(
//            title: Text("ActionSheet"),
//            buttons: [
//                .default(Text("Cancel")),
//                .destructive(Text("Delete")),
//                .default(Text("Share"))
//            ]
//        )
    }
}

#Preview {
    ActionsheetBootcamp()
}
