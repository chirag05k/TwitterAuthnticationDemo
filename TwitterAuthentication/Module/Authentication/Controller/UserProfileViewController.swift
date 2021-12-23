//
//  UserProfileViewController.swift
//  TwitterAuthentication
//
//  Created by Chirag Vekariya on 21/12/21.
//

import UIKit

class UserProfileViewController: UIViewController {
    
    // MARK: -
    // MARK: - Outlet
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblFollowingCount: UILabel!
    @IBOutlet weak var lblFollowersCount: UILabel!
    
    // MARK: -
    // MARK: - View controller life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

// MARK: -
// MARK: - Actions
extension UserProfileViewController {
    
    @IBAction func btnFollowingTapped(_ sender: UIButton) {
        //Following Tapped
    }
    
    @IBAction func btnFollowersTapped(_ sender: UIButton) {
        //Followers Tapped
    }
    
}
