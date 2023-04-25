//
//  TestViewController.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-04-18.
//

import Foundation

import UIKit


class TestViewController : UIViewController, UIDocumentPickerDelegate{


    
    @IBAction func uploadButton(_ sender: UIButton) {
        print("test")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
  
    
}


//extension TestViewController : UIDocumentPickerDelegate{
//
//    @objc func openDocuments(_ sender: UIButton) {
//        print("test")
//
//         let documentPicker =
//         UIDocumentPickerViewController(forOpeningContentTypes: [.folder])
//         documentPicker.delegate = self
//
//         // Set the initial directory.
//         documentPicker.directoryURL = .documentsDirectory
//
//         // Present the document picker.
//         present(documentPicker, animated: true, completion: nil)
     
    

