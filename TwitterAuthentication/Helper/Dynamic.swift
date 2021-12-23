//
//  Dynamic.swift
//  TwitterAuthentication
//
//  Created by Chirag Vekariya on 21/12/21.
//

import Foundation

class Dynamic<T> {
    
    // MARK: - Typealias
    typealias Listener = (T) -> Void
    
    // MARK: - Vars & Lets
    var listener: Listener?
    var value: T {
        didSet {
            self.fire()
        }
    }
    
    // MARK: - Initialization
    init(_ value: T) {
        self.value = value
    }
    
    // MARK: - Public func
    
    func bind(_ listener: Listener?) {
        self.listener = listener
    }
    
    func bindAndFire(_ listener: Listener?) {
        self.listener = listener
        listener?(value)
    }
    
    // MARK: -
    internal func fire() {
        self.listener?(value)
    }
    
}
