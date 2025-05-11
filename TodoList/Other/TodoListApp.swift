//
//  TodoListApp.swift
//  TodoList
//
//  Created by Adnan Bakaev  on 01/05/2025.
//
import FirebaseCore
import SwiftUI

@main
struct TodoListApp: App {
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
