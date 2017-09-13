//
//  ProfileNameAndPictureItem.swift
//  MultipleSelection
//
//  Created by BridgeLabz on 27/07/17.
//  Copyright © 2017 BridgeLabz. All rights reserved.
//

import Foundation

class ProfileNameAndPictureItem : ProfileViewModelItem {
    
    var type: ProfileViewModelItemType {
        return .nameAndPicture
    }
    
    var isCollapsible: Bool {
        return true
    }
    
    var sectionTitle: String {
        return "Main Info"
    }
    
    var isCollapsed = true
    
    var name: String
    var pictureUrl: String
    
    init(name: String, pictureUrl: String) {
        self.name = name
        self.pictureUrl = pictureUrl
    }
}
