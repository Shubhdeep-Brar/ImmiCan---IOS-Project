//
//  FacebookLogin.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-06-11.
//

import Foundation
import Firebase
import FBSDKLoginKit
import FBSDKCoreKit
import UIKit


class FacebookLogin{
    
    static func facebookSignIn(_ viewController : UIViewController){
        let loginManager = LoginManager()
        
        loginManager.logIn(permissions: ["public_profile", "email"], from: viewController) { (result, error) in
            if let error = error {
                print("Facebook login error: \(error.localizedDescription)")
                return
            }
            
            if let result = result, !result.isCancelled {
                // User successfully logged in via Facebook
                // Handle the success case here
                
                // You can retrieve the user's access token and other information using the following code:
                if let accessToken = AccessToken.current {
                    let tokenString = accessToken.tokenString
                    // Use the access token as needed
                }
            }
        }
        
    }
}


