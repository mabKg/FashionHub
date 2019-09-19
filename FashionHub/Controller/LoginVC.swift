 //
//  LoginVC.swift
//  FashionHub
//
//  Created by MABATHO on 9/17/19.
//  Copyright © 2019 Mabatho Morebodi. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var guestBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTxt.layer.borderWidth = 1
        emailTxt.layer.borderColor = UIColor.white.cgColor
        emailTxt.layer.cornerRadius = 20
        emailTxt.clipsToBounds = true
        
        passTxt.layer.borderWidth = 1
        passTxt.layer.borderColor = UIColor.white.cgColor
        passTxt.layer.cornerRadius = 20
        passTxt.clipsToBounds = true
        
        loginBtn.layer.cornerRadius = 20
        loginBtn.clipsToBounds = true
        
        guestBtn.layer.cornerRadius = 20
        guestBtn.clipsToBounds = true
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
