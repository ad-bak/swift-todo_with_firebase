//
//  User.swift
//  TodoList
//
//  Created by Adnan Bakaev  on 01/05/2025.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
