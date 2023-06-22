//
//  profileDataCell2.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-06-08.
//

import Foundation
import UIKit

class ProfileDataCell2 : UITableViewCell{
    
    lazy var logo2: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 16).isActive = true
        image.heightAnchor.constraint(equalToConstant: 18).isActive = true
        return image
    }()
    
    lazy var name2 : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.widthAnchor.constraint(equalToConstant: 183).isActive = true
        label.heightAnchor.constraint(equalToConstant: 16).isActive = true
        label.textColor = .gray
       // label.font = UIFont(name: "Roboto-Medium", size: 15)
        return label
       
    }()
    
    lazy var Switch: UISwitch = {
        let switchControl = UISwitch()
        switchControl.translatesAutoresizingMaskIntoConstraints = false
        switchControl.onTintColor = UIColor(hexString: "ff8787")
        switchControl.transform = CGAffineTransform(scaleX: 0.75, y: 0.75)
        return switchControl
    }()
    
    lazy var stackView1 : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .leading
        stackView.addArrangedSubview(logo2)
        stackView.addArrangedSubview(name2)
        stackView.spacing = 34
        return stackView
    }()
    
    lazy var fullStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .leading
        stackView.addArrangedSubview(stackView1)
        stackView.addArrangedSubview(Switch)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins = UIEdgeInsets(top: 30, left: 20, bottom: 30, right: 20)
        stackView.spacing = 32
        return stackView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    func setupView(){
        contentView.addSubview(fullStackView)
    
    }
    
    func updateView(image : UIImage?, labelName : String, switchControl : UISwitch){
       logo2.image = image
        name2.text = labelName
        Switch = switchControl
        }
        
    
    
}
