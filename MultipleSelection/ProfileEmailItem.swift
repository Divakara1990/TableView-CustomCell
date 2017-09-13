//
//  ProfileEmailItem.swift
//  MultipleSelection
//
//  Created by BridgeLabz on 27/07/17.
//  Copyright © 2017 BridgeLabz. All rights reserved.
//

import Foundation

class ProfileEmailItem: ProfileViewModelItem{
    
    var type: ProfileViewModelItemType{
        return .email
    }
    
    var sectionTitle: String{
        return "Email"
    }
    
    var isCollapsed = true
    
    var email: String?
    
    var rowcount: Int {
        return 1
    }
    
    init(email: String) {
        self.email = email
    }
}
