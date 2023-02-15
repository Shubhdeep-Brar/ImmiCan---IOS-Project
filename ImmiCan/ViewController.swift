//
//  ViewController.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2022-12-23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var signUpButton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.masksToBounds = false

        loginButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        loginButton.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        loginButton.layer.shadowOpacity = 1
        loginButton.layer.shadowRadius = 4
        
        signUpButton.layer.masksToBounds = false

        signUpButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        signUpButton.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        signUpButton.layer.shadowOpacity = 1
        signUpButton.layer.shadowRadius = 4
        signUpButton.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        signUpButton.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        signUpButton.layer.borderWidth = 0.5
        
        
//
    }


}

