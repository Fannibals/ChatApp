//
//  ProfileVC.swift
//  Smack-Demo
//
//  Created by Ethan  on 24/1/19.
//  Copyright © 2019 Ethan . All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    // MARK: outlets
    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var yourProfileLbl: UILabel!
    @IBOutlet weak var avatarImg: CircleImage!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var logoutBtn: UIButton!
    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUserInfo()
    }
    
    func setUserInfo() {
        self.nameLbl.text = UserDataService.instance.name
        self.emailLbl.text = UserDataService.instance.email
        self.avatarImg.image = UIImage(named: UserDataService.instance.avatarName)
        self.avatarImg.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(closeTap(_:)))
        self.bgView.addGestureRecognizer(tap)
        
    }
    
    // MARK: Actions
    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func logoutBtnPressed(_ sender: Any) {
        UserDataService.instance.logoutUser()
        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
        dismiss(animated: true, completion: nil)
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
    
}
