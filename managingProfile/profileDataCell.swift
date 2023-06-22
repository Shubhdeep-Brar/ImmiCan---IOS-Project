//
//  profileDataCell.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-06-08.
//

import Foundation
import UIKit

class ProfileDataCell : UITableViewCell{
    
    lazy var logo : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 16).isActive = true
        image.heightAnchor.constraint(equalToConstant: 18).isActive = true
//        image.leadingAnchor.constraint(equalTo: superview!.leadingAnchor, constant: 49.25).isActive = true
        return image
    }()
    
    lazy var name : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.widthAnchor.constraint(equalToConstant: 183).isActive = true
        label.heightAnchor.constraint(equalToConstant: 16).isActive = true
        label.textColor = .gray
       // label.font = UIFont(name: "Roboto-Medium", size: 15)
        return label
       
    }()
    
    lazy var button : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: 17).isActive = true
        button.heightAnchor.constraint(equalToConstant: 21).isActive = true
        button.setImage(UIImage(named: "button"), for: .normal)
        return button
       
    }()
    
    lazy var stackView1 : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .leading
        stackView.addArrangedSubview(logo)
        stackView.addArrangedSubview(name)
        stackView.spacing = 30
        return stackView
    }()
    
    lazy var fullStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .leading
        stackView.addArrangedSubview(stackView1)
       // stackView.addArrangedSubview(button)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins = UIEdgeInsets(top: 30, left: 20, bottom: 30, right: 20)
        stackView.spacing = 60

        
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
    
    func updateView(image : UIImage?, labelName : String){
       logo.image = image
        name.text = labelName
     
        
    }
        
        
        
        
        
        
    
    
}
