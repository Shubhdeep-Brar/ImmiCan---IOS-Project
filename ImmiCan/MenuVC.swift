//
//  MenuVC.swift
//  ImmiCan
//
//  Created by Shubhdeep on 2023-04-21.
//

import Foundation
import UIKit

class MenuVC: UIViewController {
    
    override func viewDidLoad(){
        super.viewDidLoad()
    
    }

    @IBAction func buttonPressed(_ sender: UIButton!){
        
        self.navigationController?.pushViewController(MarketPlaceVC(), animated: true)
//        let navVC = UINavigationController(rootViewController: MarketPlaceVC())
//            navVC.modalPresentationStyle = .fullScreen
//            self.present(navVC, animated: true, completion: nil)
        
      
    }
}
