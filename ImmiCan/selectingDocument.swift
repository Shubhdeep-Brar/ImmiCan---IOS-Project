//
//  selectingDocument.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-02-28.
//


import Foundation

import UIKit


class selectingDocument : UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet weak var dateField: UITextField!
    
    //private let documentType = DocumentType.allCases
    
    @IBOutlet weak var immigrationDocumentPickerView: UIPickerView!
    
    var documentData = ImmigrationDocumentData.immigrationStatus()
    
    

    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.immigrationDocumentPickerView.delegate = self
        
        self.immigrationDocumentPickerView.dataSource = self
        
        createDatePicker()
        
        immigrationDocumentPickerView.backgroundColor = .systemGray4
        immigrationDocumentPickerView.tintColor = .white
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return documentData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return documentData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        
        
        
        print(documentData[row])
        //        documentName.setTitle("Enter the expiry date of your \(documentData[row]).", for: .normal)
    }
    
    func createDatePicker(){
        
        dateField.textAlignment = .center
        
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        
        
        //create tool bar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        //create done button
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneButtonPressed))
        toolbar.setItems([doneButton], animated: true)
        
        // assigning toolbar
        dateField.inputAccessoryView = toolbar
        
        // assigning date picker to text field
        dateField.inputView = datePicker
    }
    
    @objc func doneButtonPressed(){
        
        
        // formatter
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle =  .none
        
        dateField.text =  dateFormatter.string(from: datePicker.date)
        
        self.view.endEditing(true)
        
        if self.view.endEditing(true){
            
            let reminderDate = datePicker.date
            
            let alertViewController = UIAlertController(title: .none, message: "You will receive reminder notifications on \(dateFormatter.string(from: reminderDate))" , preferredStyle: .alert)
            
            
            let action = UIAlertAction(title: "Continue", style: .cancel, handler: { _ in
                let altertVC = self.storyboard!.instantiateViewController(withIdentifier: "altertVC")
                self.navigationController!.pushViewController(altertVC, animated: true)
            })
            
            self.present(alertViewController, animated: true)
            
           // self.navigationController?.present(alertViewController, animated: true)
            
            
            
            alertViewController.addAction(action)
            
        }
    }
}

