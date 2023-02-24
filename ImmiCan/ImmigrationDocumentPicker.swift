//
//  ImmigrationDocumentPicker.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-02-22.
//

import Foundation

import UIKit

class ImmigrationDocumentPicker : UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet weak var immigrationDocumentPickerView: UIPickerView!
    
    var documentData = ImmigrationDocumentData.immigrationStatus()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.immigrationDocumentPickerView.delegate = self
        
        self.immigrationDocumentPickerView.dataSource = self
        

        // Do any additional setup after loading the view.
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
          return documentData.count
      }
      
      // The data to return fopr the row and component (column) that's being passed in
      func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
          return documentData[row]
      }

func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    
    
        // This method is triggered whenever the user makes a change to the picker selection.
        // The parameter named row and component represents what was selected.
    }



    
    
}


