//
//  TabBarController.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-04-25.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.modalPresentationStyle = .fullScreen
       // self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    
}
