//
//  RegisterView.swift
//  TodoList
//
//  Created by Adnan Bakaev  on 01/05/2025.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()

    var body: some View {
        HeaderView(
            title: "Register",
            subtitle: "Start Organizing todos",
            angle: -15,
            bgColor: .yellow
        )

        Form {
            TextField("Full Name", text: $viewModel.name)
                .textFieldStyle((DefaultTextFieldStyle()))
                .autocorrectionDisabled()

            TextField("Email Address", text: $viewModel.email)
                .textFieldStyle((DefaultTextFieldStyle()))
                .autocapitalization(.none)
                .autocorrectionDisabled()

            SecureField("Password         ", text: $viewModel.password)
                .textFieldStyle((DefaultTextFieldStyle()))

            TLButton(title: "Sign Up", bgColor: .blue) {
                viewModel.register()
            }

        }
        .offset(y: -50)

        Spacer()
    }
}

#Preview {
    RegisterView()
}
