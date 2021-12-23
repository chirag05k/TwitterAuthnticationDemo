//
//  AuthenticationViewModel.swift
//  TwitterAuthentication
//
//  Created by Chirag Vekariya on 21/12/21.
//

import Foundation

class AuthenticationViewModel: NSObject {
    
    // MARK: -
    // MARK: - Variable declaration
    internal let apiError               = Dynamic<String>("")
    internal let twitterAuthSuccess     = Dynamic<AuthenticationModelData?>(nil)
    
    // MARK: -
    // MARK: - API Methods
    func authenticateWithTwitter(controller: AuthenticationViewController) {
        // Authenticate user
    }
    
    private func verifyUserDetails() {
        // Verify User details and fetch require details
    }
    
}
