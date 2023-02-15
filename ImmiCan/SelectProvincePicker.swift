//
//  SelectProvincePicker.swift
//  ImmiCan
//
//  Created by Shubhdeep on 2023-01-31.
//

import Foundation
import UIKit

class SelectProvincePicker: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    var pickerData: [String] = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    
    
    
}
