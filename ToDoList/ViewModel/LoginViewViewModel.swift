//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Simon Pegg on 26.05.2023.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        errorMessage = ""
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please, fill in all fields"
            return
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please, enter valid email"
            return
        }
    }
    
    func validate() {
        
    }
}
