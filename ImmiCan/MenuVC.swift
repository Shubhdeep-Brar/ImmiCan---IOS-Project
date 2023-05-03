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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    

    @IBAction func buttonPressed(_ sender: UIButton!){
        
        let vc = MarketPlaceVC()
        vc.modalPresentationStyle = .fullScreen
        
        self.navigationController?.pushViewController(vc, animated: true)
//        let navVC = UINavigationController(rootViewController: MarketPlaceVC())
//            navVC.modalPresentationStyle = .fullScreen
//            self.present(navVC, animated: true, completion: nil)
      
    }
}
