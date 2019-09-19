//
//  ViewController.swift
//  FashionHub
//
//  Created by MABATHO on 9/11/19.
//  Copyright © 2019 Mabatho Morebodi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
       
    }

    override func viewDidAppear(_ animated: Bool) {
        let storyboard = UIStoryboard(name: "LoginStoryboard", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "loginVC")
        present(controller, animated: true, completion: nil)
    }
    
    

}

