//
//  FacebookLoginTest.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-05-01.
//

//import Foundation
//import FacebookLogin
//import FacebookCore
//import UIKit
//import FBSDKLoginKit
//
//
//class FacebookLoginTest : UIViewController, LoginButtonDelegate{
//    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
//        print("logout")
//    }
//
//    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
//        if let error = error {
//            // Handle login error
//        } else if result?.isCancelled == true {
//            // Handle cancelled login
//        } else {
//            // Handle successful login
//        }
//    }
//
//
//    // @IBOutlet weak var facebookButton: FBLoginButton!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        //        facebookButton.delegate = self
//        //        facebookButton.permissions = ["public_profile", "email"]
//        //
//    }
//
//
//    @IBAction func test(_ sender: Any) {
//
//
//
////        (sender as AnyObject).delegate = self
////        (sender as AnyObject).permissions =  ["public_profile", "email"]
//
//
//        let loginManager = LoginManager()
//        loginManager.logIn(permissions: ["public_profile", "email"], from: self) { (result, error) in
//            if let error = error {
//                print("Failed to log in with Facebook: \(error.localizedDescription)")
//                return
//            }
//            guard let accessToken = AccessToken.current else {
//                print("Failed to get access token from Facebook.")
//                return
//            }
//            // Successfully logged in. Get user's access token and make API calls.
//            let token = accessToken.tokenString
//            // ...
//        }
//
//    }
//}
//
//
//
//
////extension FacebookLoginTest: LoginButtonDelegate {
////        func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
////            print("logout")
////        }
////
////        func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
////            if let error = error {
////                // Handle login error
////            } else if result?.isCancelled == true {
////                // Handle cancelled login
////            } else {
////                // Handle successful login
////            }
////        }
////    }
////
//


import FBSDKLoginKit
import Foundation
import UIKit

class FacebookLoginTest: UIViewController, LoginButtonDelegate{
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
        
        let token = result?.token?.tokenString
        
        let request = FBSDKLoginKit.GraphRequest(graphPath: "me", parameters: ["Fields": "email, name"] , tokenString: token, version: nil, httpMethod: .get)
        request.start(completionHandler: {connection, result, error in
            print("\(result)")
        })
    }
    
    
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let token  = AccessToken.current, !token.isExpired{
            let token = token.tokenString
            
            let request = FBSDKLoginKit.GraphRequest(graphPath: "me", parameters: ["Fields": "email, name"] , tokenString: token, version: nil, httpMethod: .get)
            request.start(completionHandler: {connection, result, error in
                print("\(result)")
            })
        }
        else{
            let loginButton = FBLoginButton()
            loginButton.center = view.center
            loginButton.delegate = self
            loginButton.permissions = ["public_profile", "email"]
            view.addSubview(loginButton)
        }
    }
    
}
