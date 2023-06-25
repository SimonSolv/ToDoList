//
//  NewItemView.swift
//  ToDoList
//
//  Created by Simon Pegg on 26.05.2023.
//

import SwiftUI

struct NewItemView: View {
    
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresenting: Bool
    
    var body: some View {
        VStack {
            Text("New item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 20)
            
            Form {
                TextField("Title", text: $viewModel.title)
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                TLButton(title: "Save", background: .green) {
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPresenting = false
                    } else {
                        viewModel.showAlert = true
                    }
                }
                .padding()
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(title: Text("Error"), message: Text("Please, fill all the fields and select due date that is today or newer"))
            }
        }
    }
}

struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView(newItemPresenting: Binding(get: {
            return true
        }, set: { _ in
            //
        }))
    }
}
