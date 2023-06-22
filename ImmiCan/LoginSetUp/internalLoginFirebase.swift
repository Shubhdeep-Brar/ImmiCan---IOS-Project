//
//  internalLoginFirebase.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-06-11.
//

import Foundation
import UIKit
import Firebase


class internalLoginFirebase{
    
    
    typealias LoginCompletion = () -> Void
    
    
    static func internalLogin(email: String, password: String, completion: LoginCompletion? = nil){
        Auth.auth().signIn(withEmail: email, password: password) { firebaseResult, error in
            if let e = error {
                // Show alert for incorrect password.
                let alertViewController = UIAlertController(title: "Incorrect email/password", message: "If you do not remember your password, click on 'Forgot password' to reset it.", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                let currentViewController = UIApplication.shared.keyWindow?.rootViewController
                currentViewController?.present(alertViewController, animated: true, completion: nil)
                alertViewController.addAction(action)
            } else {
                // Success, push the new view controller.
                completion?()
            }
        }
    }
}
