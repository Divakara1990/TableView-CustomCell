//
//  AttributesCell.swift
//  MultipleSelection
//
//  Created by BridgeLabz on 27/07/17.
//  Copyright © 2017 BridgeLabz. All rights reserved.
//

import UIKit

class AttributesCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    var item: Attributes?  {
        didSet {
            titleLabel?.text = item?.key
            valueLabel?.text = item?.value
        }
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
}
