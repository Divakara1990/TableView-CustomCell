//
//  ProfileAttributesItem.swift
//  MultipleSelection
//
//  Created by BridgeLabz on 27/07/17.
//  Copyright © 2017 BridgeLabz. All rights reserved.
//

import Foundation

class ProfileAttributeItem: ProfileViewModelItem{
    
    var type: ProfileViewModelItemType{
        return .attribute
    }
    
    var sectionTitle: String{
        return "Attributes"
    }
    
    var isCollapsed = true
    
    var rowcount: Int {
        return attributes.count
    }
    
    var attributes: [Attributes]
    
    init(attributes: [Attributes]) {
        self.attributes = attributes
    }
}
