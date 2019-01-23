//
//  ProfileVC.swift
//  Smack-Demo
//
//  Created by Ethan  on 23/1/19.
//  Copyright © 2019 Ethan . All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var yourProfileLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var avatarImg: CircleImage!
    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var logoutBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
    }
    
    @IBAction func logoutBtnPressed(_ sender: Any) {
    }
    
}
