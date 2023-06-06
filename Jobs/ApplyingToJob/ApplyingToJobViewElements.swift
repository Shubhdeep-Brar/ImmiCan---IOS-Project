//
//  ApplyingToJobViewElements.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-04-12.
//
import MobileCoreServices
import UniformTypeIdentifiers
import Foundation
import UIKit

class ApplyingToJobViewElements: UIViewController, UIDocumentPickerDelegate{
    
    var details : JobApplicationStructure?
   // let data = JobDataProvider.makeJobMockData()
    // var openingDocuments : OpeningDocumentPicker
    
    lazy var avatarView : UIImageView = {
        let  image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.heightAnchor.constraint(equalToConstant: 155).isActive = true
        image.widthAnchor.constraint(equalToConstant: 155).isActive = true
        image.layer.cornerRadius = 92
        image.sizeToFit()
        image.image = UIImage(named: "photo3")
        return image
    }()
    
    lazy var jobTitle: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont(name: "Roboto",size: 15.0)
        title.font = UIFont.boldSystemFont(ofSize: 15.0)
        title.widthAnchor.constraint(equalToConstant: 250).isActive = true
        title.heightAnchor.constraint(equalToConstant: 18).isActive = true
        title.text = details?.jobTitle
        title.textAlignment = .center
        title.numberOfLines = .max
        title.textColor = .white
        return title
    }()
     
    lazy var  uploadResumeButton : UIButton = {
        let button = UIButton()
        button.setTitle("upload your resume", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.widthAnchor.constraint(equalToConstant: 291).isActive = true
        button.heightAnchor.constraint(equalToConstant: 135).isActive = true
        button.layer.masksToBounds = true
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .light)
        button.addTarget(self, action: #selector(self.buttonTapped(_:)), for: .touchUpInside)
        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        button.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        button.layer.shadowOpacity = 1
        button.layer.cornerRadius = 29
        button.backgroundColor = .gray
        return button
    }()
    
    @objc func buttonTapped(_ sender:UIButton!) {
        let documentPicker =
               UIDocumentPickerViewController(forOpeningContentTypes: [.folder])
               documentPicker.delegate = self

               // Set the initial directory.
               documentPicker.directoryURL = .documentsDirectory

               // Present the document picker.
               present(documentPicker, animated: true, completion: nil)
    }
    
    lazy var additionalInformation : UITextField! = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.textAlignment = .center
        textField.widthAnchor.constraint(equalToConstant: 260).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 108).isActive = true
        textField.placeholder = "Enter additional information"
        textField.backgroundColor = .gray
        textField.layer.cornerRadius =  29
        return textField
    }()
    
    lazy var  submitButton : UIButton = {
        let  button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Submit Application", for: .normal)
        button.setTitleColor(UIColor.black, for: UIControl.State.normal)
        button.addTarget(self, action:#selector(self.pressedSubmitButton(_:)), for: .touchUpInside)
        button.widthAnchor.constraint(equalToConstant: 260).isActive = true
        button.heightAnchor.constraint(equalToConstant: 58).isActive = true
        button.titleLabel?.textAlignment = .center
        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        button.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        button.layer.shadowOpacity = 1
        button.layer.cornerRadius = 29
        button.backgroundColor = .gray
        return button
    }()
    
    @objc func pressedSubmitButton(_ sender: UIButton!){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "finalJobPage") as! FinalJobSubmission
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    lazy var  finalStack : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 40
        stack.addArrangedSubview(uploadResumeButton)
        stack.addArrangedSubview(additionalInformation)
        stack.addArrangedSubview(submitButton)
        return stack
        
    }()
    
    
    // Implementation of UIDocumentPickerDelegate methods goes here
    
    override func viewDidLoad() {
        title = "Apply"
        super.viewDidLoad()
        view.backgroundColor = .black
        
        view.addSubview(avatarView)
        view.addSubview(jobTitle)
        view.addSubview(finalStack)
        NSLayoutConstraint.activate([
            avatarView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 117),
            avatarView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -117),
            avatarView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            avatarView.bottomAnchor.constraint(equalTo: jobTitle.topAnchor, constant: -12),
            jobTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 85),
            jobTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80),
            jobTitle.topAnchor.constraint(equalTo: avatarView.bottomAnchor, constant: 12),
            jobTitle.bottomAnchor.constraint(equalTo: finalStack.topAnchor, constant: -43),
            finalStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 68),
            finalStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -62),
            finalStack.topAnchor.constraint(equalTo: jobTitle.bottomAnchor, constant: 85),
            finalStack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -74)
            
            
            ])
        
    }

    
    
}


