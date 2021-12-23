//
//  SceneDelegate.swift
//  TwitterAuthentication
//
//  Created by Chirag Vekariya on 20/12/21.
//

import UIKit
import TwitterKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        if let openURLContext = URLContexts.first {
            let url = openURLContext.url
            let options: [AnyHashable : Any] = [
                UIApplication.OpenURLOptionsKey.annotation : openURLContext.options.annotation as Any,
                UIApplication.OpenURLOptionsKey.sourceApplication : openURLContext.options.sourceApplication as Any,
                UIApplication.OpenURLOptionsKey.openInPlace : openURLContext.options.openInPlace as Any
            ]
            TWTRTwitter.sharedInstance().application(UIApplication.shared, open: url, options: options)
        }
        
    }
    
}
