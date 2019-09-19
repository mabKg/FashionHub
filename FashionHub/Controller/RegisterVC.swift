//
//  RegisterVC.swift
//  FashionHub
//
//  Created by MABATHO on 9/19/19.
//  Copyright © 2019 Mabatho Morebodi. All rights reserved.
//

import UIKit
import Firebase

class RegisterVC: UIViewController {

    //Oulets
    
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var confirmPassTxt: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var register: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTxt.layer.borderWidth = 1
        usernameTxt.layer.borderColor = UIColor.white.cgColor
        usernameTxt.layer.cornerRadius = 20
        usernameTxt.clipsToBounds = true
        
        emailTxt.layer.borderWidth = 1
        emailTxt.layer.borderColor = UIColor.white.cgColor
        emailTxt.layer.cornerRadius = 20
        emailTxt.clipsToBounds = true
        
        passwordTxt.layer.borderWidth = 1
        passwordTxt.layer.borderColor = UIColor.white.cgColor
        passwordTxt.layer.cornerRadius = 20
        passwordTxt.clipsToBounds = true
        
        confirmPassTxt.layer.borderWidth = 1
        confirmPassTxt.layer.borderColor = UIColor.white.cgColor
        confirmPassTxt.layer.cornerRadius = 20
        confirmPassTxt.clipsToBounds = true
        
        register.layer.cornerRadius = 20
        register.clipsToBounds = true
    }
    
    @IBAction func registerClicked(_ sender: Any) {
      guard let email = emailTxt.text , !email.isEmpty ,
        let username = usernameTxt.text , !username.isEmpty ,
        let password = passwordTxt.text , !password.isEmpty else {return}
        
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
          
            if let error = error {
                debugPrint(error)
                return
            }
            print("succesfully registered new user.")
        }
    }
    
  

}
