//
//  AuthViewModel.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 15.04.2022.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    
    func login() {
        
    }
    
    func registerUser(email: String, password: String, username: String, fullname: String, profileImage: UIImage) {
        
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
            print("DEBUG: Error \(error.localizedDescription)")
            return
        }
            print("DEBUG: Successfully signed up user..")
    }
}
}
