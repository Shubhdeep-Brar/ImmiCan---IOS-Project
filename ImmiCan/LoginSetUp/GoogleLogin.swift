//
//  GoogleLogin.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-06-11.
//

import Foundation
import UIKit
import GoogleSignIn
import Firebase


class GoogleLogin{
    
    static func googleLogin(_ viewController : UIViewController){
        
        
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config
        
        // Start the sign in flow!
        GIDSignIn.sharedInstance.signIn(withPresenting: viewController ) { [unowned viewController] result, error in
            guard error == nil else {
                // ...
                return
            }
            guard let user = result?.user,
                  let idToken = user.idToken?.tokenString
            else {
                // ...
                return
            }
            _ = GoogleAuthProvider.credential(withIDToken: idToken,
                                              accessToken: user.accessToken.tokenString)
            // ...
        }
    }
}
