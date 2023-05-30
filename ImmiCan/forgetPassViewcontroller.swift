//
//  forgetPassViewcontroller.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2022-12-29.
//

import Foundation
import FacebookCore
import FirebaseAuth
import Firebase
import UIKit
class forgetPassViewcontroller : UIViewController {
    
    @IBOutlet weak var textPlaceHolder: UITextField!
    
    
    override func viewDidLoad() {
        var bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: textPlaceHolder.frame.height - 1, width: textPlaceHolder.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.black.cgColor
        textPlaceHolder.borderStyle = UITextField.BorderStyle.none
        textPlaceHolder.layer.addSublayer(bottomLine)
    }
    
    
    @IBAction func forgotPassSelected(_ sender: Any) {
        
        Auth.auth().sendPasswordReset(withEmail: textPlaceHolder.text!) { error in
            if let error = error {
                let alertViewController = UIAlertController(title: "Error", message: "\(error.localizedDescription) ", preferredStyle: .alert)
                
                
                let action = UIAlertAction(title: "Ok", style: .cancel, handler: nil)

                self.present(alertViewController, animated: true)
            
                
                alertViewController.addAction(action)
                
                
                
                //print("Password reset error: \(error.localizedDescription)")
            } else {
                    let alertViewController = UIAlertController(title: "Password Reset", message: "You have been sent password reset link ", preferredStyle: .alert)
                    
                    
                    let action = UIAlertAction(title: "Ok", style: .cancel, handler: nil)

                    self.present(alertViewController, animated: true)
                
                    
                    alertViewController.addAction(action)
            }
        }
        
        }
        
    }
    

