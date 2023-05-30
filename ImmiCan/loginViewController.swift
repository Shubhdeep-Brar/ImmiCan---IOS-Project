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


class loginViewController: UIViewController {
    
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
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
            //            loginButton.frame = CGRect.init(x: self.view.frame.width/3.5, y: self.view.frame.height/2, width: 120, height: 45)
            loginButton.delegate = self
            loginButton.translatesAutoresizingMaskIntoConstraints = false
            loginButton.permissions = ["public_profile", "email"]
            loginButton.removeConstraints(loginButton.constraints)
            view.addSubview(loginButton)
            NSLayoutConstraint.activate([
                loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),  // Adjust the constant value to position the button as desired
                loginButton.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: -180), // Adjust the constraint based on your requirements
                loginButton.widthAnchor.constraint(equalToConstant: 110),
                loginButton.heightAnchor.constraint(equalToConstant: 39),
                
                
                
            ])
            loginButton.layer.cornerRadius = 15
        }
        
        let googleloginButton = GIDSignInButton()
        
        googleloginButton.translatesAutoresizingMaskIntoConstraints = false
        
        googleloginButton.addTarget(self, action: #selector(googleSignIn), for: .touchUpInside)
        view.addSubview(googleloginButton)
        NSLayoutConstraint.activate([
            googleloginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),  // Adjust the constant value to position the button as desired
            googleloginButton.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: -180)  // Adjust the constraint based on your requirements
        ])
        googleloginButton.layer.cornerRadius = 15
    }
    
    
    
    
    // Do any additional setup after loading the view.
    
    
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
                guard let email = emailTextField.text else { return}
                guard let password = passwordTextField.text else { return}
        
                Auth.auth().signIn(withEmail: email, password: password) {firebaseResult, error in
                    if let e = error {
                        //show alert for incorrect password.
                        let alertViewController = UIAlertController(title: "Incorrect email/ password", message: "If you do not remember your password, click on forgot password to reset it.", preferredStyle: .alert)
                        
                        
                        let action = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
//                            self.navigationController!.pushViewController(altertVC, animated: true)
//                        })
                        self.present(alertViewController, animated: true)
                        
                       // self.navigationController?.present(alertViewController, animated: true)
                        
                        
                        
                        alertViewController.addAction(action)
                        
                        
                        //HOME PAGE
                        //print("incorrect password")
        
                    }
                    else{
        //print("Login successfull")
                        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                        let newViewController = storyBoard.instantiateViewController(withIdentifier: "PageView") as! PageViewController
                        self.navigationController?.pushViewController(newViewController, animated: true)
                       
                    }
        
                }
            }
    }


extension loginViewController : LoginButtonDelegate{
    
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
        
        let token = result?.token?.tokenString
        
        let request = FBSDKLoginKit.GraphRequest(graphPath: "me", parameters: ["Fields": "email, name"] , tokenString: token, version: nil, httpMethod: .get)
        request.start(completionHandler: {connection, result, error in
            print("\(String(describing: result))")
        })
    }
    
    
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
        
        
    }
    
    @objc func googleSignIn(sender : GIDSignInButton){
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }

        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config

        // Start the sign in flow!
        GIDSignIn.sharedInstance.signIn(withPresenting: self) { [unowned self] result, error in
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




//extension loginViewController : GID{
//
//}
