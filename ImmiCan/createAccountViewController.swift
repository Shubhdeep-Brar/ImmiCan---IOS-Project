//
//  createAccountViewController.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-01-07.
//

import UIKit
import Firebase


class createAccountViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordText.rightViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 2, height: 2))
        let image = UIImage(named: "closedEye")
        imageView.contentMode = .scaleAspectFit
        imageView.image = image
        //passwordText.rightView. = imageView.

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signUpTapped(_ sender: Any) {
        guard let email = emailText.text else { return}
        guard let password = passwordText.text else { return}
        
        Auth.auth().createUser(withEmail: email, password: password) {firebaseResult, error in
            if let e = error {
                // show alert
                let alertViewController = UIAlertController(title: "Error", message: "This account already exists", preferredStyle: .alert)
                
                
                let action = UIAlertAction(title: "Sign in", style: .cancel, handler: { _ in
                    let altertVC = LoginViewController()
                    self.navigationController!.pushViewController(altertVC, animated: true)
                })
                
                self.present(alertViewController, animated: true)
                
               // self.navigationController?.present(alertViewController, animated: true)
                
                
                
                alertViewController.addAction(action)
                
                
            }
            else{
                print("Account created")
               
            }
        }
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
