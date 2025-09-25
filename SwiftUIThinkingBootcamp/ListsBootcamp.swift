//
//  LIstsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 23.09.2025.
//

import SwiftUI

struct ListsBootcamp: View {
    
    @State var fruits: [String] = [
        "Apple",
        "Banana",
        "Orange",
        "Mango"
    ]
    
    @State var veggies: [String] = [
        "Carrot",
        "Broccoli",
        "Spinach",
        "Beetroot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                ) {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                    }
                Section(header: Text("Veggies")) {
                        ForEach(veggies, id: \.self) { veggie in
                            Text(veggie)
                        }
                    }
            }
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    func delete(at offsets: IndexSet) {
        fruits.remove(atOffsets: offsets)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        fruits.move(fromOffsets: source, toOffset: destination)
    }
    
    func add() {
        fruits.append("newItem")
    }
}

#Preview {
    ListsBootcamp()
}
