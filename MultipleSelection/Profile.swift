//
//  Profile.swift
//  MultipleSelection
//
//  Created by BridgeLabz on 27/07/17.
//  Copyright © 2017 BridgeLabz. All rights reserved.
//

import Foundation

class Profile {
    var fullname: String?
    var pictureUrl: String?
    var email: String?
    var about: String?
    var friends = [Friends]()
    var profileAttributes = [Attributes]()
    
    init?(data: Data) {
        do {
            if let json = try JSONSerialization.jsonObject(with: data) as? [String: Any], let body = json["data"] as? [String: Any] {
                self.fullname = body["fullName"] as? String
                self.pictureUrl = body["pictureUrl"] as? String
                self.about = body["about"] as? String
                self.email = body["email"] as? String
                if let friends = body["friends"] as? [[String: Any]]
                {
                    self.friends = friends.map { Friends(json: $0) }
                }
                if let profileAttributes = body["profileAttributes"] as? [[String: Any]] {
                    self.profileAttributes = profileAttributes.map { Attributes(json: $0) }
                }
            }
        } catch {
            print("Error deserializing JSON: \(error)")
            return nil
        }
    }
}



class Friends {
    var name: String?
    var pictureUrl: String?
    
    init(json: [String: Any]) {
        self.name = json["name"] as? String
        self.pictureUrl = json["pictureUrl"] as? String
    }
}

class Attributes {
    var key: String?
    var value: String?
    
    
    init(json: [String: Any]) {
        self.key = json["key"] as? String
        self.value = json["value"] as? String
    }

}
