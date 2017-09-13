//
//  AboutCell.swift
//  MultipleSelection
//
//  Created by BridgeLabz on 27/07/17.
//  Copyright © 2017 BridgeLabz. All rights reserved.
//

import UIKit

class AboutCell: UITableViewCell {

    
    @IBOutlet weak var aboutLabel: UILabel!
    
    var item: ProfileViewModelItem? {
        didSet {
            guard  let item = item as? ProfileAboutItem else {
                return
            }
            aboutLabel?.text = item.about
        }
    }
    
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
}
