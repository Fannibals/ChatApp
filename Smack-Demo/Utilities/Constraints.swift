//
//  Constraints.swift
//  Smack-Demo
//
//  Created by Ethan  on 21/1/19.
//  Copyright © 2019 Ethan . All rights reserved.
//

import Foundation
// ???
typealias CompletionHandler = (_ Success: Bool) -> ()

// URL Constants
let BASE_URL = "https://chatforjbjb.herokuapp.com/"
let URL_REGISTER = "\(BASE_URL)account/register"

// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "signUp"
let UNWIND = "unwindToChannel"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

