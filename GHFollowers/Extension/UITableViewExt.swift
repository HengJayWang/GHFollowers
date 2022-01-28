//
//  UITableViewExt.swift
//  GHFollowers
//
//  Created by M100-M1MacMini on 2022/1/28.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
