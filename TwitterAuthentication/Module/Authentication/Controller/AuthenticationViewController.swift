//
//  ViewController.swift
//  TwitterAuthentication
//
//  Created by Chirag Vekariya on 20/12/21.
//

import UIKit
import TwitterKit

class AuthenticationViewController: UIViewController {
    
    // MARK: -
    // MARK: - Outlet
    @IBOutlet weak var lblUserName: UILabel!
    
    // MARK: -
    // MARK: - Variable
    fileprivate let viewModel = AuthenticationViewModel()
    let twitterClient = TWTRAPIClient.withCurrentUser()
    
    // MARK: -
    // MARK: - View controller life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialSetUP()
    }
    
}

// MARK: -
// MARK: - Actions
extension AuthenticationViewController {

    @IBAction func btnTwitterLoginTapped(_ sender: UIButton) {
        TWTRTwitter.sharedInstance().logIn(with: self) { [weak self] (session, error) in
            guard let uSelf = self else { return }
            if let userSession = session {
                uSelf.lblUserName.text = AppString.userName(userSession.userName)
            } else if let error = error {
                UIAlertController.showAlert(with: error.localizedDescription, on: uSelf)
            }
        }
    }
    
}

// MARK: -
// MARK: - SetUp Methods
extension AuthenticationViewController {
    
    private func initialSetUP() {
        bindViewModel()
    }
    
    private func bindViewModel() {
        viewModel.apiError.bind { [weak self] apiError in
            guard let uSelf = self else { return }
            UIAlertController.showAlert(with: apiError, on: uSelf)
        }
        viewModel.twitterAuthSuccess.bind { [weak self] userDetails in
            guard let uSelf = self, let details = userDetails else { return }
            DispatchQueue.main.async {
                uSelf.updateUserDetails(user: details)
            }
        }
    }
    
    private func doTwitterLogin() {
        viewModel.authenticateWithTwitter(controller: self)
    }
    
    private func updateUserDetails(user: AuthenticationModelData) {
        // FIXME: Set the user details 
    }
    
}
