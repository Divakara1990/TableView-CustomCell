//
//  Enums.swift
//  MultipleSelection
//
//  Created by BridgeLabz on 27/07/17.
//  Copyright © 2017 BridgeLabz. All rights reserved.
//

import Foundation

enum ProfileViewModelItemType {
    case nameAndPicture
    case about
    case email
    case friend
    case attribute
}




protocol ProfileViewModelItem {
    var type : ProfileViewModelItemType { get }
    var rowcount: Int { get }
    var sectionTitle: String { get }
    var isCollapsible: Bool { get }
    var isCollapsed: Bool { get set }
}

extension ProfileViewModelItem {
    var rowcount: Int {
        return 1
    }
    
    var isCollapsible: Bool {
        return true
    }
}
