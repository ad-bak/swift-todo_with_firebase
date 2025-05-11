//
//  LoginView.swift
//  TodoList
//
//  Created by Adnan Bakaev  on 01/05/2025.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()

    var body: some View {
        NavigationView {
            VStack {
                // Header

                HeaderView(
                    title: "ToDo List",
                    subtitle: "Get Things Done",
                    angle: 15,
                    bgColor: .pink
                )

                // Form

                Form {
                    Section {
                        if !viewModel.errorMessage.isEmpty {
                            Text(viewModel.errorMessage)
                                .foregroundColor(.red)
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                    }

                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()

                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())

                    TLButton(title: "Log In", bgColor: .blue) {
                        viewModel.login()
                    }

                }
                .offset(y: -50)

                // Create Acc
                VStack {
                    Text("New Around Here?")

                    NavigationLink(
                        "Create An Account",
                        destination: RegisterView()
                    )
                }
                .padding(.bottom, 50)

                Spacer()

            }

        }
    }
}

#Preview {
    LoginView()
}
