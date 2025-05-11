//
//  TodoListViewViewModel.swift
//  TodoList
//
//  Created by Adnan Bakaev  on 01/05/2025.
//

import Foundation
import FirebaseFirestore

class TodoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
   
    private let userId: String
    
    init(userId: String){
        self.userId = userId
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
        
    }
}
