//
//  RegisterView.swift
//  ToDoList
//
//  Created by Simon Pegg on 26.05.2023.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            //Header
            HeaderView(title: "Register", subtitle: "Start organizing todos", rotationAngle: -13, background: .orange)
            
            Form {
                TextField("Full name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                TLButton(title: "Create an account", background: .green)
                {
                    viewModel.register()
                }
                .padding(.top, 8)
                .padding(.bottom, 8)
            }
            .offset(y: -50)
            
            Spacer()
        }
        
        
        
        
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
