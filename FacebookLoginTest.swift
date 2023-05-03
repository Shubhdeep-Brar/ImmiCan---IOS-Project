//
//  FacebookLoginTest.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-05-01.
//

import Foundation
import FacebookLogin
import UIKit

class FacebookLoginTest : UIViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let loginButton = FBLoginButton()
//                loginButton.center = view.center
//                view.addSubview(loginButton)
    }
    
    @IBAction func facebookLoginButton(_ sender: UIButton) {
        let loginButton = FBLoginButton()
                loginButton.center = view.center
                //loginButton.delegate = self
                view.addSubview(loginButton)
        
    }
    
}

