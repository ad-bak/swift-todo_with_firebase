//
//  ProfileView.swift
//  TodoList
//
//  Created by Adnan Bakaev  on 01/05/2025.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()

    var body: some View {
        NavigationView {
            VStack {
                // avatar
                if let user = viewModel.user {
                    profile(user:user)
                } else {
                    Text("Loadin user...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear{
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user:User) -> some View {
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(.blue)
            .frame(width: 125, height: 125)
            .padding()
        // info
        VStack(alignment: .leading) {
            HStack {
                Text("Name: ")
                    .bold()
                Text(user.name)
            }
            HStack {
                Text("Email: ")
                    .bold()
                Text(user.email)
            }
            HStack {
                Text("Member since: ")
                    .bold()
                Text(
                    "\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))"
                )
            }
        }
        Spacer()
        // sign out

        Button("Log Out") {
            viewModel.logOut()
        }.tint(.red)

        Spacer()
    }
}

#Preview {
    ProfileView()
}
