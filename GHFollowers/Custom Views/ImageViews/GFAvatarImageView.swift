//
//  GFAvatarImageView.swift
//  GHFollowers
//
//  Created by M100-M1MacMini on 2022/1/19.
//

import UIKit

class GFAvatarImageView: UIImageView {
    
    let cache               = NetworkManager.shared.cache
    let placeholderImage    = Images.placeholder
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        layer.cornerRadius  = 10
        clipsToBounds       = true
        image               = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
    

    func downloadImage(fromURL urlString: String) {
        Task { image = await NetworkManager.shared.downloadImage(from: urlString) ?? placeholderImage }
        
//        NetworkManager.shared.downloadImage(from: urlString) { [weak self] image in
//            guard let self = self, let image = image else { return }
//            DispatchQueue.main.async { self.image = image }
//        }
    }
}
