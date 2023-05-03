//
//  loginViewController.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-01-07.
//

import UIKit
import Firebase


class loginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        guard let email = emailTextField.text else { return}
        guard let password = passwordTextField.text else { return}
        
        Auth.auth().signIn(withEmail: email, password: password) {firebaseResult, error in
            if let e = error {
                //HOME PAGE
                print("incorrect password")
                
            }
            else{

                print("Login successfull")
            }
            
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

//    @IBAction func tappedLoginButton(_ sender: Any) {
//        // direct to the welcome tour home page
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            let vc = storyboard.instantiateViewController(withIdentifier: "ProvinceSelection") as! SelectProvincePicker
//            self.navigationController?.pushViewController(vc, animated: true)
//    }
//}
//



