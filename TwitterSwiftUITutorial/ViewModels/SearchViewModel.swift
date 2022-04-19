//
//  SearchViewModel.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 19.04.2022.
//

import SwiftUI
import Firebase

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        COLLECTION_USERS.getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            self.users = documents.map({ User(dictionary: $0.data()) })
            
//            print("DEBUG: Users \(users)")
//            
//            documents.forEach { document in
//                let user = User(dictionary: document.data())
//                self.users.append(user)
        }
    }
}
