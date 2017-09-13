//
//  ProfileAboutItem.swift
//  MultipleSelection
//
//  Created by BridgeLabz on 27/07/17.
//  Copyright © 2017 BridgeLabz. All rights reserved.
//

import Foundation

class ProfileAboutItem: ProfileViewModelItem{
 
    var type: ProfileViewModelItemType {
        return .about
    }
    
    var sectionTitle: String{
        return "About"
    }
    
    var isCollapsed = true
    
    var rowcount: Int {
        return 1
    }
    
    var about: String?
    
    init(about: String) {
        self.about = about
    }
}
