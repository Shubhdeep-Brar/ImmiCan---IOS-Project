//
//  JobCell.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-03-18.
//

import Foundation
import UIKit

class JobCell: UITableViewCell{
    //company logo create image
    
    lazy var avatarLogo: UIImageView = {
        let  logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.heightAnchor.constraint(equalToConstant: 53).isActive = true
        logo.widthAnchor.constraint(equalToConstant: 46).isActive = true
        return logo
    }()
    
    //companyName create label
    lazy var companyNameLabel: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont.preferredFont(forTextStyle: .headline)
        return title
    }()
    
    //Job Title create label
    lazy var jobTitleLabel: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont.preferredFont(forTextStyle: .subheadline)
        return title
    }()
    
    
    //Stack of company logo and label
    lazy var logoStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 6
        stack.addArrangedSubview(companyNameLabel)
        stack.addArrangedSubview(jobTitleLabel)
        stack.alignment = .leading
        return stack
    }()
    
    //Stack of company logo and logoStack
    lazy var topStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 8
        stack.addArrangedSubview(avatarLogo)
        stack.addArrangedSubview(logoStack)
        stack.alignment = .leading
        return stack
    }()
    
    
    
    //Employment Type Label
    lazy var employmentTypeLabel: UILabel = {
        let type = UILabel()
        type.translatesAutoresizingMaskIntoConstraints = false
        type.font = UIFont.preferredFont(forTextStyle: .subheadline)
        type.layer.cornerRadius = 29
        return type
    }()
    
    //Employment Type Label
    lazy var employmentType1Label: UILabel = {
        let type1 = UILabel()
        type1.translatesAutoresizingMaskIntoConstraints = false
        type1.font = UIFont.preferredFont(forTextStyle: .subheadline)
        type1.layer.cornerRadius = 29
        return type1
    }()
    //Stack of employmentType
    lazy var employmentStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 5
        stack.addArrangedSubview(employmentTypeLabel)
        stack.addArrangedSubview(employmentType1Label)
        stack.alignment = .leading
        return stack
    }()
    
    //Middle Stack
    
    lazy var middleStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 10
        stack.addArrangedSubview(topStack)
        stack.addArrangedSubview(employmentStack)
        stack.alignment = .leading
        return stack
    }()
    
    
    //Location label
    lazy var locationLabel: UILabel = {
        let location = UILabel()
        location.translatesAutoresizingMaskIntoConstraints = false
        location.font = UIFont.preferredFont(forTextStyle: .footnote)
        return location
    }()
    
    //Duration Label
    lazy var durationLabel: UILabel = {
        let duration = UILabel()
        duration.translatesAutoresizingMaskIntoConstraints = false
        duration.font = UIFont.preferredFont(forTextStyle: .footnote)
        return duration
    }()
    //duration and location stack
    lazy var durationStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 180
        stack.addArrangedSubview(locationLabel)
        stack.addArrangedSubview(durationLabel)
        stack.alignment = .leading
        return stack
    }()
    
    //Full Stack Creation of full cell
    lazy var finalStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 30
        stack.addArrangedSubview(middleStack)
        stack.addArrangedSubview(durationStack)
        stack.alignment = .leading
        stack.backgroundColor = .green
        stack.backgroundColor = UIColor(red: 229, green: 229, blue: 229, alpha: 1)
        stack.layer.cornerRadius = 29
        stack.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        stack.layer.shadowOpacity = 1
        stack.layer.shadowRadius = 2
        NSLayoutConstraint.activate([
            stack.leadingAnchor.constraint(equalTo: middleStack.leadingAnchor, constant: -15 ),
            stack.leadingAnchor.constraint(equalTo: durationStack.leadingAnchor, constant: -15),
            stack.trailingAnchor.constraint(equalTo: middleStack.trailingAnchor, constant: -15),
            stack.trailingAnchor.constraint(equalTo: durationStack.trailingAnchor, constant: 15),
            stack.topAnchor.constraint(equalTo: middleStack.topAnchor, constant: -15),
            stack.bottomAnchor.constraint(equalTo: middleStack.bottomAnchor, constant: 55)])
        return stack
    
    }()
//    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder){
        super.init(coder: coder)
        setupView()
    }
    func setupView() {
        
        contentView.addSubview(finalStack)
        NSLayoutConstraint.activate([
            finalStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
           finalStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            finalStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            finalStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -10)])
    }
    
    
    
    func updateView(
        companyLogo : UIImage?,
        companyName: String,
        jobTitle: String,
        employmentType: String,
        employmentType2 : String,
        location : String,
        postingDuration : String
    ){
        avatarLogo.image = companyLogo
        companyNameLabel.text = companyName
        jobTitleLabel.text = jobTitle
        employmentTypeLabel.text = employmentType
        employmentType1Label.text = employmentType2
        locationLabel.text = location
        durationLabel.text = postingDuration
    }
    //cells
}






