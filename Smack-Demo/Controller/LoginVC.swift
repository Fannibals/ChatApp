//
//  LoginVC.swift
//  Smack-Demo
//
//  Created by Ethan  on 21/1/19.
//  Copyright © 2019 Ethan . All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    // MARK: outlets
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    @IBAction func loginBtnPressed(_ sender: Any) {
//        guard let email = usernameTxt.text, usernameTxt.text != "" else {return}
//        guard let password = passwordTxt.text, passwordTxt.text != "" else {return}
//
//        AuthService.instance.loginUser(email: email, password: password) { (success) in
//            if success {
//                NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE,
//                                                object:nil)
//            }
//        }
//
//    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
 
    @IBAction func signUpBtnPressed(_ sender: UIButton) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
}
