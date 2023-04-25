//
//  HousingCell.swift
//  Trip
//
//  Created by Ramneek Kaur on 2023-03-20.
//

import Foundation
import UIKit

class HousingCell: UITableViewCell{
    
    lazy var avatarView: UIImageView = {
        let  iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.heightAnchor.constraint(equalToConstant: 118).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 119).isActive = true
        iv.layer.masksToBounds = true
        iv.layer.cornerRadius = 25
        return iv
    }()
    
    lazy var headingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .subheadline)
        return label
    }()
     
    lazy var addressLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.preferredFont(forTextStyle: .subheadline)
        label.numberOfLines = .max
            return label
        }()
    
    lazy var bedroomNumLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .subheadline)
        return label
    }()
    
    lazy var bedroomIcon : UIImageView = {
        let  iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.heightAnchor.constraint(equalToConstant: 22).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 22).isActive = true
        iv.sizeToFit()
        iv.image = UIImage(named:"bedroom")
        return iv
    }()
    
    lazy var bedroomStack : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.addArrangedSubview(bedroomNumLabel)
        stackView.addArrangedSubview(bedroomIcon)
        stackView.spacing = 2
        stackView.alignment = .lastBaseline
        stackView.distribution = .fillProportionally
        return stackView
    }()
   
  
    lazy var bathroomNumLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .subheadline)
        return label
    }()

    lazy var bathroomIcon : UIImageView = {
        let  iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.heightAnchor.constraint(equalToConstant: 22).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 22).isActive = true
        iv.image = UIImage(named:"bathroom")
        return iv
    }()
    lazy var bathroomStack : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.addArrangedSubview(bathroomNumLabel)
        stackView.addArrangedSubview(bathroomIcon)
        stackView.spacing = 2
        stackView.alignment = .lastBaseline
        stackView.distribution = .fillProportionally
       // stackView.alignment = .center
        return stackView
    }()
    
    lazy var bathroomAndBedroomStack : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.addArrangedSubview(bedroomStack)
        stackView.addArrangedSubview(bathroomStack)
        stackView.spacing = 5
        stackView.distribution = .fill
        stackView.alignment = .lastBaseline
       // stackView.alignment = .center
        return stackView
    }()
    
    lazy var rent : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .subheadline)
        
        return label
    }()
    lazy var rentstack : UIStackView = {
        
        let stackView = UIStackView()
        stackView.addArrangedSubview(rent)
        stackView.alignment = .trailing
        stackView.distribution = .fill
        stackView.alignment = .lastBaseline
        return stackView
    }()
    
    lazy var bedBathRentStack :UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.addArrangedSubview(bathroomAndBedroomStack)
        stackView.addArrangedSubview(rentstack)
        stackView.spacing = 80
        stackView.distribution = .fill
        stackView.alignment = .lastBaseline
        stackView.alignment = .leading
       
//        stackView.alignment = .center
        return stackView
    }()
    
    lazy var housingStack : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.addArrangedSubview(headingLabel)
        stackView.addArrangedSubview(addressLabel)
        stackView.addArrangedSubview(bedBathRentStack)
        stackView.alignment = .leading
    
        return stackView
        
    }()
    
    lazy var contentStack : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.addArrangedSubview(avatarView)
        stackView.addArrangedSubview(housingStack)
        stackView.spacing = 10
        stackView.alignment = .center
        stackView.backgroundColor = UIColor(red: 229, green: 229, blue: 229, alpha: 1)
        stackView.layer.cornerRadius = 29
        stackView.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        stackView.layer.shadowOpacity = 1
        stackView.layer.shadowRadius = 2
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: avatarView.leadingAnchor, constant: -15),
            stackView.trailingAnchor.constraint(equalTo: housingStack.trailingAnchor, constant: 15),
            stackView.topAnchor.constraint(equalTo: avatarView.topAnchor, constant: -15),
            stackView.bottomAnchor.constraint(equalTo: avatarView.bottomAnchor, constant: 15)])
        
        return stackView
    }()
    
        
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }

    required init?(coder: NSCoder){
        super.init(coder: coder)
        setupView()
    }
    func setupView() {
        contentView.addSubview(contentStack)
        NSLayoutConstraint.activate([
            contentStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            contentStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            contentStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            contentStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15)])
    }

    func updateView(
    image : UIImage?,
    Heading : String,
     address : String,
     bedroom : String,
     bathroom : String,
     Rent : String
    ){
        addressLabel.text = address
        headingLabel.text = Heading
        bedroomNumLabel.text = bedroom
        bathroomNumLabel.text = bathroom
        avatarView.image = image
        rent.text = Rent
        
        
    }
}


    
    
    
  




