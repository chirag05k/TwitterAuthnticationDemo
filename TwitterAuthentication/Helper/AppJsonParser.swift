//
//  AppDecoder.swift
//  TwitterAuthentication
//
//  Created by Chirag Vekariya on 21/12/21.
//

import Foundation

class AppJsonParser {
    
    class func decodeObject<T>(of type: T.Type, _ data: Data, completion: ((Swift.Result<T, Error>) -> Void)) where T: Codable {
        do {
            let decoderObject = try JSONDecoder().decode(T.self, from: data)
            completion(.success(decoderObject))
        } catch let error {
            completion(.failure(error))
        }
    }
    
}
