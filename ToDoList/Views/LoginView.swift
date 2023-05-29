//
//  LoginView.swift
//  ToDoList
//
//  Created by Simon Pegg on 26.05.2023.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView(content: {
            VStack {
                //Header
                HeaderView(title: "To do list", subtitle: "Get things done", rotationAngle: 13, background: .pink)
                
                //Login form
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log in", background: .blue, action: {
                        viewModel.login()
                    })
                    .padding(.top, 8)
                    .padding(.bottom, 8)
                }
                
                //Create account
                
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        })
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
