//
//  FollowerAndFollowingViewController.swift
//  TwitterAuthentication
//
//  Created by Chirag Vekariya on 23/12/21.
//

import UIKit

class FollowerAndFollowingViewController: UIViewController {

    // MARK: -
    // MARK: - Outlet
    @IBOutlet weak var tblUserList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}

// MARK: -
// MARK: - UITableViewDataSource
extension FollowerAndFollowingViewController: UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10 // FIXME: Set the user details
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: AppIdentifiers.userProfileTblCell, for: indexPath) else { return UITableViewCell() }
        cell.setUpUserDetails()
        return cell
    }
    
}
