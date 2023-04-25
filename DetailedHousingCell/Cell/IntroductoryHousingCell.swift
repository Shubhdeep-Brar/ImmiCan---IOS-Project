//
//  IntroductoryCell.swift
//  Trip
//
//  Created by Ramneek Kaur on 2023-03-20.
//

import Foundation
import UIKit

class IntroductoryHousingCell: UITableViewCell {
    
    lazy var avatarView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.heightAnchor.constraint(equalToConstant: 60).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 60).isActive = true
        iv.layer.cornerRadius = 30
        iv.image = UIImage(named: "photo1")
        return iv
      }()
      //welcome User_Name
      lazy var welcomeLabel: UILabel = {
        let welcomeLabelName = UILabel()
        welcomeLabelName.translatesAutoresizingMaskIntoConstraints = false
        welcomeLabelName.font = UIFont.preferredFont(forTextStyle: .body)
        welcomeLabelName.text = "Hi Alex!!"
        welcomeLabelName.font = .boldSystemFont(ofSize: 18)
        return welcomeLabelName
      }()
      //welcome - Welcome to the Job Struct
      lazy var welcomeLabel2: UILabel = {
        let welcomeLabelName2 = UILabel()
        welcomeLabelName2.translatesAutoresizingMaskIntoConstraints = false
         welcomeLabelName2.font = UIFont.preferredFont(forTextStyle: .footnote)
        welcomeLabelName2.text = "Welcome to the Job Search"
        welcomeLabelName2.font = .boldSystemFont(ofSize: 13)
        return welcomeLabelName2
      }()
      //notification image
      let image = UIImage(named: "notificationIcon")
      lazy var button : UIButton = {
        let nv = UIButton()
        nv.setBackgroundImage(image, for: UIControl.State.normal)
        nv.addTarget(self, action:#selector(self.imageButtonTapped(_:)), for: .touchUpInside)
        nv.translatesAutoresizingMaskIntoConstraints = false
        nv.heightAnchor.constraint(equalToConstant: 30).isActive = true
        nv.widthAnchor.constraint(equalToConstant: 29).isActive = true
        return nv
      }()
      //when notification is pressed
      @objc func imageButtonTapped(_ sender:UIButton!)
      {
        print("My image button tapped")
      }
      //Firststack of labels
      lazy var topStack: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 3
        stackView.addArrangedSubview(welcomeLabel)
        stackView.addArrangedSubview(welcomeLabel2)
        stackView.alignment = .leading
        stackView.distribution = .fillProportionally
        return stackView
      }()
      //Second stack of image and Firststack
      lazy var nameAndLabelStack: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 15
        stackView.addArrangedSubview(avatarView)
        stackView.addArrangedSubview(topStack)
        stackView.alignment = .leading
        return stackView
      }()
      //Final stack with notification icon
      lazy var finalStack: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 65
        stackView.addArrangedSubview(nameAndLabelStack)
        stackView.addArrangedSubview(button)
        stackView.alignment = .leading
        return stackView
      }()
      lazy var JobLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .headline)
        label.font = .boldSystemFont(ofSize: 25)
        label.text = "Find a job"
        return label
      }()
      lazy var textField: UITextField = {
        let jobSearchField = UITextField()
        jobSearchField.placeholder = "Job title or Keyword"
        jobSearchField.layer.cornerRadius = 29
        jobSearchField.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        jobSearchField.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        jobSearchField.layer.shadowOpacity = 1
        jobSearchField.layer.shadowRadius = 4
        jobSearchField.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
       jobSearchField.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        jobSearchField.layer.borderWidth = 0.5
        jobSearchField.addConstraint(jobSearchField.heightAnchor.constraint(equalToConstant: 50))
        jobSearchField.returnKeyType = UIReturnKeyType.done
        jobSearchField.clearButtonMode = UITextField.ViewMode.whileEditing
        jobSearchField.font = UIFont.systemFont(ofSize: 15)
        jobSearchField.leftViewMode = UITextField.ViewMode.always
       let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let image = UIImage(named: "searchIcon")
        imageView.image = image
        jobSearchField.leftView = imageView
        return jobSearchField
      }()
      lazy var fullStack: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 15
        stackView.addArrangedSubview(finalStack)
        stackView.addArrangedSubview(JobLabel)
        stackView.addArrangedSubview(textField)
        stackView.alignment = .fill
        stackView.distribution = .fill
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
        contentView.addSubview(fullStack)
        NSLayoutConstraint.activate([
          fullStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
          fullStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
          fullStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 55),
          fullStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -25 )])
      }
      func updateView(
        name: String,
        image: UIImage?
      ){
        welcomeLabel.text = name
        avatarView.image = image
      }
    }
