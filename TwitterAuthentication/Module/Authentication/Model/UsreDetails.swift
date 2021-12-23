//
//  UsreDetails.swift
//  TwitterAuthentication
//
//  Created by Chirag Vekariya on 21/12/21.
//

import Foundation

class AuthenticationModelData: Codable {
    
    let userName: String
    let userImage: String
    let userEmail: String
    
    enum CodingKeys: String, CodingKey {
        case userName = "name"
        case userEmail = "email"
        case userImage = "user_profile"
    }
    
}
