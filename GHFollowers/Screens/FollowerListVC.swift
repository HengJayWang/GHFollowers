//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by M100-M1MacMini on 2022/1/17.
//

import UIKit

class FollowerListVC: UIViewController {
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true

        NetworkManager.shared.getFollowers(for: username, page: 1) { result in

            switch result {
            case let .success(followers):
                print(followers)
            case let .failure(error):
                self.presentGFAlertOnMainThread(title: "Some Error", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
