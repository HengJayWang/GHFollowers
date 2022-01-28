//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by M100-M1MacMini on 2022/1/25.
//

import UIKit

protocol GFRepoItemVCDelegate: AnyObject {
    func didTapGitHubProfile()
}

class GFRepoItemVC: GFItemInfoVC {
    
    weak var delegate: GFRepoItemVCDelegate!
    
    init(user: User, delegete: GFRepoItemVCDelegate) {
        super.init(user: user)
        self.delegate = delegete
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GutHub Profile")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile()
    }
}
