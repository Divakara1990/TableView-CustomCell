//
//  ProfielFriendsItem.swift
//  MultipleSelection
//
//  Created by BridgeLabz on 27/07/17.
//  Copyright © 2017 BridgeLabz. All rights reserved.
//

import Foundation

class ProfileFriendsItem: ProfileViewModelItem{
    
    var type: ProfileViewModelItemType{
        return .friend
    }
    
    var sectionTitle: String{
        return "Friends"
    }
    
    var isCollapsed = true
    
    var rowcount: Int{
        return friends.count
    }
    
    var friends: [Friends]
    
    init(friends: [Friends]) {
        self.friends = friends
    }
}
