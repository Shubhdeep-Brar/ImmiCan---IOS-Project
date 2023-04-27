//
//  PageVC1.swift
//  ImmiCan
//
//  Created by Shubhdeep on 2023-02-06.
//

import Foundation
import UIKit

class tutorialHandler: UIViewController {
    
    
    @IBOutlet weak var chooseYourProvince: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        chooseYourProvince?.layer.masksToBounds = false
        
        chooseYourProvince?.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        chooseYourProvince?.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        chooseYourProvince?.layer.shadowOpacity = 1
        chooseYourProvince?.layer.shadowRadius = 4
        chooseYourProvince?.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        chooseYourProvince?.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        chooseYourProvince?.layer.borderWidth = 0.5
        chooseYourProvince?.setTitle("Select Province", for: .normal)
        
    }
    
    @IBAction func selectProvinceTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ProvinceSelection") as! SelectProvincePicker
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func applySinButtonTapped(_ sender: UIButton) {
        if let url = URL(string: "https://www.canada.ca/en/employment-social-development/services/sin/apply.html") {
              UIApplication.shared.open(url)
          }
    }
    
    @IBAction func applyIdButtonTapped(_ sender: UIButton) {
    }
    
}
