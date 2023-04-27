//
//  JobFirstPage.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-04-26.
//

import Foundation
import UIKit

class JobFirstPage : UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(fullStack)
        
        NSLayoutConstraint.activate([
            fullStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            fullStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            fullStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            fullStack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -120),

        ])
    }
    
    
    lazy var initialLabel : UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont(name: "Roboto",size: 22.0)
        title.text = "Let's create your job post"
        title.font = UIFont.boldSystemFont(ofSize: 22.0)
        return title
    }()
    
    lazy var secondLabel : UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont(name: "Roboto",size: 16.0)
        title.text = "*Indicates required"
        title.font = UIFont.boldSystemFont(ofSize: 16.0)
        title.textColor = .lightGray
        return title
    }()
    
   lazy var firstStack : UIStackView = {
        let stack = UIStackView()
       stack.translatesAutoresizingMaskIntoConstraints = false
        stack.alignment = .leading
        stack.axis = .vertical
        stack.spacing =  10
        stack.addArrangedSubview(initialLabel)
        stack.addArrangedSubview(secondLabel)
        return stack
        
        
    }()
    
    
    lazy var jobTitleLabel : UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont(name: "Roboto",size: 20.0)
        title.text = "Job Title*"
        title.font = UIFont.boldSystemFont(ofSize: 20.0)
        return title
    }()
    
    lazy var jobTitleTextField : UITextField = {
        
        let tf = UITextField(frame: CGRect(x: 20, y: 100, width: 350, height: 50))
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: tf.frame.height))
        tf.leftView = paddingView
        tf.leftViewMode = .always
        tf.placeholder = "Enter Job Title"
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.widthAnchor.constraint(equalToConstant: 300).isActive = true
        tf.backgroundColor = .white
        tf.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        tf.layer.shadowOffset = CGSize(width: 0.5, height: 4.0)
        tf.layer.shadowOpacity = 1
        tf.layer.shadowRadius = 5
        tf.layer.cornerRadius = 10
        tf.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        tf.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        tf.layer.borderWidth = 0.5
        return tf
    }()
    
    lazy var companyNameLabel : UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont(name: "Roboto",size: 20.0)
        title.text = "Company Name*"
        title.font = UIFont.boldSystemFont(ofSize: 20.0)
        return title
    }()
    
    lazy var companyNameTextField : UITextField = {
        
        let tf = UITextField(frame: CGRect(x: 20, y: 100, width: 350, height: 50))
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: tf.frame.height))
        tf.leftView = paddingView
        tf.leftViewMode = .always
        tf.placeholder = "Enter Company Name"
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.widthAnchor.constraint(equalToConstant: 300).isActive = true
        tf.backgroundColor = .white
        tf.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        tf.layer.shadowOffset = CGSize(width: 0.5, height: 4.0)
        tf.layer.shadowOpacity = 1
        tf.layer.shadowRadius = 5
        tf.layer.cornerRadius = 10
        tf.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        tf.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        tf.layer.borderWidth = 0.5
        return tf
    }()
    
    lazy var employmentTypeLabel1 : UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont(name: "Roboto",size: 20.0)
        title.text = "Job Type*"
        title.font = UIFont.boldSystemFont(ofSize: 20.0)
        return title
    }()
    
    lazy var jobTypeTextField1 : UITextField = {
        
        let tf = UITextField(frame: CGRect(x: 20, y: 100, width: 350, height: 50))
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: tf.frame.height))
        tf.leftView = paddingView
        tf.leftViewMode = .always
        tf.placeholder = "Enter Job Type"
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.widthAnchor.constraint(equalToConstant: 300).isActive = true
        tf.backgroundColor = .white
        tf.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        tf.layer.shadowOffset = CGSize(width: 0.5, height: 4.0)
        tf.layer.shadowOpacity = 1
        tf.layer.shadowRadius = 5
        tf.layer.cornerRadius = 10
        tf.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        tf.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        tf.layer.borderWidth = 0.5
        return tf
    }()
    
    lazy var employmentTypeLabel2 : UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont(name: "Roboto",size: 20.0)
        title.text = "Job Type"
        title.font = UIFont.boldSystemFont(ofSize: 20.0)
        return title
    }()
    
    lazy var jobTypeTextField2 : UITextField = {
        
        let tf = UITextField(frame: CGRect(x: 20, y: 100, width: 350, height: 50))
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: tf.frame.height))
        tf.leftView = paddingView
        tf.leftViewMode = .always
        tf.placeholder = "Enter Job Type"
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.widthAnchor.constraint(equalToConstant: 300).isActive = true
        tf.backgroundColor = .white
        tf.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        tf.layer.shadowOffset = CGSize(width: 0.5, height: 4.0)
        tf.layer.shadowOpacity = 1
        tf.layer.shadowRadius = 5
        tf.layer.cornerRadius = 10
        tf.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        tf.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        tf.layer.borderWidth = 0.5
        return tf
    }()
    
    lazy var companyLocation : UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont(name: "Roboto",size: 20.0)
        title.text = "Location"
        title.font = UIFont.boldSystemFont(ofSize: 20.0)
        return title
    }()
    
    lazy var location : UITextField = {
        
        let tf = UITextField(frame: CGRect(x: 20, y: 100, width: 350, height: 50))
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: tf.frame.height))
        tf.leftView = paddingView
        tf.leftViewMode = .always
        tf.placeholder = "Enter Job Location"
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.widthAnchor.constraint(equalToConstant: 300).isActive = true
        tf.backgroundColor = .white
        tf.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        tf.layer.shadowOffset = CGSize(width: 0.5, height: 4.0)
        tf.layer.shadowOpacity = 1
        tf.layer.shadowRadius = 5
        tf.layer.cornerRadius = 10
        tf.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        tf.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        tf.layer.borderWidth = 0.5
        return tf
    }()
    
    lazy var listingStack : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
       // stack.alignment = .leading
        stack.axis = .vertical
        stack.spacing =  10
        stack.addArrangedSubview(jobTitleLabel)
        stack.addArrangedSubview(jobTitleTextField)
        stack.addArrangedSubview(companyNameLabel)
        stack.addArrangedSubview(companyNameTextField)
        stack.addArrangedSubview(employmentTypeLabel1)
        stack.addArrangedSubview(jobTypeTextField1)
        stack.addArrangedSubview(employmentTypeLabel2)
        stack.addArrangedSubview(jobTypeTextField2)
        stack.addArrangedSubview(companyLocation)
        stack.addArrangedSubview(location)
        return stack
        
        
    }()
    
    lazy var fullStack : UIStackView = {
        let stack = UIStackView()
      //  stack.alignment = .leading
        stack.axis = .vertical
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.spacing =  15
        stack.addArrangedSubview(firstStack)
        stack.addArrangedSubview(listingStack)
        //stack.backgroundColor = .blue
        return stack
        }()
    
    
    
    
    
}
