//
//  SelectProvincePicker.swift
//  ImmiCan
//
//  Created by Shubhdeep on 2023-01-31.
//

import Foundation
import UIKit

class SelectProvincePicker: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var tourStarted: UIButton!
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    var pickerData: [String] = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tourStarted.layer.masksToBounds = false

        tourStarted.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        tourStarted.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        tourStarted.layer.shadowOpacity = 1
        tourStarted.layer.shadowRadius = 4
        tourStarted.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        tourStarted.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        tourStarted.layer.borderWidth = 0.5
        
        pickerData = ["Alberta", "British Columbia","Manitoba", "New Brunswick", "Newfoundland and Labrador", "Nova Scotia", "Ontario", "Prince Edward Island", "Quebec", "Saskatchewan", "Yukon"]
        
        self.pickerView.delegate = self
        
        self.pickerView.dataSource = self
        
    }
        
        override func didReceiveMemoryWarning() {
              super.didReceiveMemoryWarning()
              // Dispose of any resources that can be recreated.
          }

          // Number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
              return 1
          }
          
          // The number of rows of data
          func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
              return pickerData.count
          }
          
          // The data to return fopr the row and component (column) that's being passed in
          func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
              return pickerData[row]
          }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        
            // This method is triggered whenever the user makes a change to the picker selection.
            // The parameter named row and component represents what was selected.
        }
    
    
    @IBAction func tourStartedByUser(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "PageView") as! PageViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    }
    
    //main reset to working commit
    

