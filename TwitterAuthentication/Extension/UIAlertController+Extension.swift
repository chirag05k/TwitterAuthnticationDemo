//
//  UIAlertController+Extension.swift
//  TwitterLoginDemo
//
//  Created by Chirag Vekariya on 19/12/21.
//

import UIKit

extension UIAlertController {
    
    class func showAlert(with error: String, on viewController: UIViewController) {
        let alertController = UIAlertController(title: AppString.error(), message: error, preferredStyle: .alert)
        let dismissAction = UIAlertAction(title: AppString.dismissAlert(), style: .cancel)
        alertController.addAction(dismissAction)
        viewController.present(alertController, animated: true)
    }
    
}
