//
//  EditProfile.swift
//  ImmiCan
//
//  Created by Ramneek Kaur on 2023-06-08.
//

import Foundation
import UIKit
import MobileCoreServices

class EditProfile: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(stack)
//        view.addSubview(textField)
//        view.addSubview(textField2)
//        view.addSubview(textField3)
//        view.addSubview(textField4)
//        view.addSubview(textField5)
        
    }
    var image: UIButton = {
       let image = UIButton()
        image.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
       image.setImage(UIImage(named: "addPhoto"), for: .normal)
       
               
               image.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
               
       
//        image.addTarget(EditProfile.self, action: #selector(buttonTapped), for: .touchUpInside)
        
        
        return image
    }()
    
    @objc func buttonTapped() {
            actionsheet()
        }
         var textField : UITextField = {
            let tf = UITextField(frame: CGRect(x: 20, y: 100, width: 350, height: 50))
            let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: tf.frame.height))
            tf.leftView = paddingView
            tf.leftViewMode = .always
            tf.placeholder = "First name"
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
    var textField2 : UITextField = {
       let tf = UITextField(frame: CGRect(x: 20, y: 100, width: 350, height: 50))
       let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: tf.frame.height))
       tf.leftView = paddingView
       tf.leftViewMode = .always
       tf.placeholder = "Last name"
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
    
    var textField4 : UITextField = {
       let tf = UITextField(frame: CGRect(x: 20, y: 100, width: 350, height: 50))
       let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: tf.frame.height))
       tf.leftView = paddingView
       tf.leftViewMode = .always
       tf.placeholder = "Phone number"
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
    var textField5 : UITextField = {
       let tf = UITextField(frame: CGRect(x: 20, y: 100, width: 350, height: 50))
       let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: tf.frame.height))
       tf.leftView = paddingView
       tf.leftViewMode = .always
       tf.placeholder = "Location"
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
    
    var stack : UIStackView {
       let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        //    stackView.heightAnchor.constraint(equalToConstant: 35.5).isActive = true
        //    stackView.widthAnchor.constraint(equalToConstant: 134).isActive = true
        stackView.addArrangedSubview(image)
        stackView.addArrangedSubview(textField)
        stackView.addArrangedSubview(textField2)
        stackView.addArrangedSubview(textField5)
        stackView.addArrangedSubview(textField4)
        stackView.spacing = 6
        stackView.alignment = .center
        
        return stackView
    }
           
    
    func actionsheet() {
        let alert = UIAlertController(title: "Choose Image", message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title:"open camera", style: .default, handler: {(handler) in self.openCamera() }))
        alert.addAction(UIAlertAction(title:"Gallery", style: .default, handler: {(handler) in self.openGallery() }))
        alert.addAction(UIAlertAction(title: "cancel", style: .default, handler: {(handler) in self.openGallery() } ))
        self.present(alert, animated: true, completion: nil)
    }
    func openCamera()
    
    {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.allowsEditing = true
            
            imagePicker.sourceType = UIImagePickerController.SourceType.camera
    
            self.present(imagePicker, animated: true, completion: nil)
        }
        else
        {
            let alert  = UIAlertController(title: "Warning", message: "You don't have camera", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    func openGallery() {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let image = UIImagePickerController()
            image.allowsEditing = true
            image.delegate = self
            self.present(image, animated: true, completion: nil)
        }
    }
    }

extension EditProfile : UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print(info)
    }
}

    
    

