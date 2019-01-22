//
//  CreateAccountVC.swift
//  Smack-Demo
//
//  Created by Ethan  on 21/1/19.
//  Copyright © 2019 Ethan . All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    // MARK: outlets
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Actions
    
    @IBAction func createAccntPressed(_ sender: Any) {
        guard let email = emailTxt.text, emailTxt.text != "" else {return}
        
        guard let pass = passwordTxt.text, passwordTxt.text != "" else{return}
        
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success {
                print("registered user!")
            }
        }
    }
    
    @IBAction func chooseAvatarPressed(_ sender: Any) {
    }
    
    @IBAction func pickBgColorPressed(_ sender: Any) {
    }
    
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
