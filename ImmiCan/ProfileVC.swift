//
//  ManageProfileVC.swift
//  ImmiCan
//
//  Created by Shubhdeep on 2023-02-22.
//

import Foundation
import UIKit

class ProfileVC : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
        @IBAction func manageProfileButton() {
            
            let vc = UIViewController()
            vc.view.backgroundColor = .yellow
            navigationController?.pushViewController(vc, animated: true)
        }
    
}

