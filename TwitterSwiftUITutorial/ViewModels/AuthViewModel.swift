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
        
        print("DEBUG: Email is \(email)")
        print("DEBUG: Email is \(password)")
    }
}
