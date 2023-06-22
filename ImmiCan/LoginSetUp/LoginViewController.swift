//
//  loginViewController.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-01-07.
//

import UIKit
import Firebase
import GoogleSignIn
import FBSDKLoginKit



class LoginViewController: UIViewController {
    
    var showAlertAction: (() -> Void)?
    var toggleButton: UIButton!
    var isPasswordVisible = false
    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LoginInUIElements.passwordAndEmailViewAdjustments(email: emailTextField, password: passwordTextField)
        setupToggleButton()
        passwordTextField.rightView = toggleButton
        passwordTextField.rightViewMode = .always
    }
    
    
    @IBAction func facebookLogin(_ sender: Any) {
        FacebookLogin.facebookSignIn(self)
    }
    
    @IBAction func googleLogin(_ sender: GIDSignInButton!) {
        GoogleLogin.googleLogin(self)
    }
    
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        internalLoginFirebase.internalLogin(email: email, password: password){
            // Success case: Open the new view controller
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "PageView") as! PageViewController
            self.navigationController?.pushViewController(newViewController, animated: true)
        }
    }
    
    func setupToggleButton() {
            toggleButton = UIButton(type: .custom)
            toggleButton.frame = CGRect(x: 8, y: 0, width: 40, height: 40)
            toggleButton.setImage(UIImage(named: "closedEye"), for: .normal)
            toggleButton.addTarget(self, action: #selector(togglePasswordVisibility), for: .touchUpInside)
        }
        
        @objc func togglePasswordVisibility() {
            isPasswordVisible = !isPasswordVisible
            
            if isPasswordVisible {
                passwordTextField.isSecureTextEntry = false
                toggleButton.setImage(UIImage(named: "openEye"), for: .normal)
            } else {
                passwordTextField.isSecureTextEntry = true
                toggleButton.setImage(UIImage(named: "closedEye"), for: .normal)
            }
        }
    }





