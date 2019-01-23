//
//  UserDataService.swift
//  Smack-Demo
//
//  Created by Ethan  on 22/1/19.
//  Copyright © 2019 Ethan . All rights reserved.
//

import Foundation

class UserDataService {
    static let instance = UserDataService()
    
    public private(set) var id = ""
    public private(set) var avatarColor = ""
    public private(set) var avatarName = ""
    public private(set) var email = ""
    public private(set) var name = ""
    
    func setUserData(id: String, avatarColor: String, avatarName: String, email: String, name: String) {
        self.id = id
        self.avatarName = avatarName
        self.avatarColor = avatarColor
        self.email = email
        self.name = name
    }
    
    func setAvatarName(avatarname: String) {
        self.avatarName = avatarname
    }
    
}
