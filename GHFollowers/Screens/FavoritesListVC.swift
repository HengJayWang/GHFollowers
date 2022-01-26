//
//  FavoritesListVC.swift
//  GHFollowers
//
//  Created by M100-M1MacMini on 2022/1/14.
//

import UIKit

class FavoritesListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        PersistenceManager.retrieveFavorites { result in
            switch result {
            case .success(let favorites):
                for favorite in favorites {
                    print(favorite.login)
                }
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Get favorites data fail!", message: error.localizedDescription, buttonTitle: "Ok")
            }
        }
    }
    
}
