//
//  LoginViewViewModel.swift
//  TodoList
//
//  Created by Adnan Bakaev  on 01/05/2025.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""

    init(email: String = "", password: String = "") {
        self.email = email
        self.password = password
    }

    func login() {
        guard validate() else {
            return
        }
        
        //Login
        Auth.auth().signIn(withEmail: email, password: password)

    }

    private func validate() -> Bool {
        errorMessage = ""

        // check if email and password are not empty
        guard
            !email.trimmingCharacters(in: .whitespaces).isEmpty,
            !password.trimmingCharacters(in: .whitespaces).isEmpty
        else {
            errorMessage = "Please fill in all fields!"
            return false
        }

        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email!"
            return false
        }

        return true

    }
}
