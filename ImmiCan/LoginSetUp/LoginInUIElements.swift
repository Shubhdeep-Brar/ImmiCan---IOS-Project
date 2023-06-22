//
//  LoginInUIElements.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-06-11.
//

import Foundation
import UIKit


class LoginInUIElements{
    
    static func passwordAndEmailViewAdjustments(email: UITextField, password: UITextField){
        let emailPaddingView = UIView(frame: CGRectMake(0, 0, 15, email.frame.height))
        email.leftView = emailPaddingView
        email.leftViewMode = UITextField.ViewMode.always
        email.backgroundColor = .white
        
        let passwordPaddingView = UIView(frame: CGRectMake(0, 0, 15, password.frame.height))
        password.leftView = passwordPaddingView
        password.leftViewMode = UITextField.ViewMode.always
        password.backgroundColor = .white
    }
    
}
