//
//  CreateChannel.swift
//  Smack-Demo
//
//  Created by Ethan  on 24/1/19.
//  Copyright © 2019 Ethan . All rights reserved.
//

import UIKit

class CreateChannel: UIViewController {

    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var descriptionTxt: UITextField!
    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func createChannelPressed(_ sender: Any) {
        guard let description = descriptionTxt.text, descriptionTxt.text != "" else {return}
        guard let name = usernameTxt.text, usernameTxt.text != "" else {return}
        SocketService.instance.addChannel(channelName: name, channelDescription: description) { (success) in
            if success {
                self.dismiss(animated: true, completion: nil)
        }
//        AuthService.instance.addChannel(channelName: name, description: description) { (success) in
//            if success {
//                print("add channel \(name) successfully")
//                self.dismiss(animated: true, completion: nil)
//            }
        }
    }
    @IBAction func closeBtnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setUpView() {
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
        
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }

}
