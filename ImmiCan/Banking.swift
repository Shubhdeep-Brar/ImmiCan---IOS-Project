//
//  Banking.swift
//  ImmiCan
//
//  Created by Shubhdeep on 2023-01-30.
//

import Foundation
import UIKit
@IBDesignable

class Banking : UIView {
  @IBInspectable var color : UIColor? = UIColor.white{
    didSet {
      //self.layer.backgroundColor = self.color?.cgColor
    }
  }
  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = UIColor.init(red: 255.0, green: 141.0, blue: 135.0, alpha: 1)
      
      //init(_colorLiteralRed: 255, green: 141, blue: 135, alpha: 1)
  }
  //rgba(255, 141, 135, 1)
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
      backgroundColor = UIColor(red: 1.0, green: 0.529, blue: 0.529, alpha: 1.0)
      
  }
  // Only override draw() if you perform custom drawing.
  // An empty implementation adversely affects performance during animation.
  override func draw(_ rect: CGRect) {
    // Drawing code
    //get the size of the view
    let size = self.bounds.size
    //get 4 points for the shape layer
    let p1 = self.bounds.origin
    let p2 = CGPoint(x: p1.x + size.width + 750, y: p1.y)
    let p3 = CGPoint(x: p2.x, y: size.height)
    let p4 = CGPoint(x: p1.x, y: size.height - 500)
    //create the path
    let path = UIBezierPath()
    path.move(to: p1)
    path.addLine(to: p2)
    path.addLine(to: p3)
    path.addLine(to: p4)
    path.close()
    (color ?? UIColor.clear).set()
    path.fill()
  }
}
