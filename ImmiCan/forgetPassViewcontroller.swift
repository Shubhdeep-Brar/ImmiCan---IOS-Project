//
//  forgetPassViewcontroller.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2022-12-29.
//

import Foundation
import UIKit
class forgetPassViewcontroller : UIViewController {
    
    @IBOutlet weak var textPlaceHolder: UITextField!
    override func viewDidLoad() {
        var bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: textPlaceHolder.frame.height - 1, width: textPlaceHolder.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.black.cgColor
        textPlaceHolder.borderStyle = UITextField.BorderStyle.none
        textPlaceHolder.layer.addSublayer(bottomLine)
    }
    
}
