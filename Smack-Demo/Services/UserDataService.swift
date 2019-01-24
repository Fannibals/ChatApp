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
    
    func returnUIColor(components: String) -> UIColor {
        // "[0.8313725490196079,0.9333333333333333,0.8117647058823529,1.0]",
        if components.count > 0 {
            var myArr = components.split(separator: ",")
            myArr[0] = myArr[0].dropFirst()
            myArr[3] = myArr[3].dropLast()
            let rfloat = CGFloat(Float(myArr[0])!)
            let gfloat = CGFloat(Float(myArr[1])!)
            let bfloat = CGFloat(Float(myArr[2])!)
            let afloat = CGFloat(Float(myArr[3])!)
            
            let newUIColor = UIColor(red: rfloat, green: gfloat, blue: bfloat, alpha: afloat)
            return newUIColor
        }else {
            return UIColor.lightGray
        }
    }
    
    func logoutUser() {
        self.id = ""
        self.avatarName = ""
        self.avatarColor = ""
        self.email = ""
        self.name = ""
        
        AuthService.instance.isLoggedIn = false
        AuthService.instance.authToken = ""
        AuthService.instance.userEmail = ""
    }
    
}

