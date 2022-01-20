//
//  UserInfoVC.swift
//  GHFollowers
//
//  Created by M100-M1MacMini on 2022/1/20.
//

import UIKit

class UserInfoVC: UIViewController {
    
    var user: Follower!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        
        print("The user: \(user.login) is selected!")

    }
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }


}
