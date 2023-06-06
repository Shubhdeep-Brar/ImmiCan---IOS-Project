//
//  CreateListingVC.swift
//  ImmiCan
//
//  Created by Shubhdeep on 2023-04-12.
//

import PhotosUI
import Foundation
import UIKit

class CreateListingVC: UIViewController, UINavigationControllerDelegate {
    
    var listings = ListingData.mockDataListing()
    var uploadImagesArray = [UIImage]()
    func toHaveDefaultAddImageCell() {
        uploadImagesArray.append(UIImage(named: "Add Image")!)
    }
    
    lazy var avatarView: UIImageView = {
        let profilePic = UIImageView()
        profilePic.translatesAutoresizingMaskIntoConstraints = false
        profilePic.heightAnchor.constraint(equalToConstant: 40).isActive = true
        profilePic.widthAnchor.constraint(equalToConstant: 40).isActive = true
        profilePic.layer.cornerRadius = 20
        profilePic.image = UIImage(named: "profilePic")
        return profilePic
    }()
    
    lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.font = .boldSystemFont(ofSize: 14)
        label.heightAnchor.constraint(equalToConstant: 40).isActive = true
        label.widthAnchor.constraint(equalToConstant: 150).isActive = true
        label.numberOfLines = 2
        label.text = "Hi Alex \nYou can create listing here"
        return label
    }()
    
    lazy var topStack: UIStackView = {
        
        let hStack = UIStackView()
        hStack.addArrangedSubview(avatarView)
        hStack.addArrangedSubview(welcomeLabel)
        hStack.alignment = .leading
        hStack.axis = .horizontal
        hStack.spacing = 10
        hStack.distribution = .fill
        hStack.isLayoutMarginsRelativeArrangement = true
        hStack.translatesAutoresizingMaskIntoConstraints = false
        hStack.layoutMargins = UIEdgeInsets(top: 3, left: 20, bottom: 1, right: 1)
        hStack.backgroundColor = .gray
        hStack.layer.cornerRadius = 2
        hStack.layer.shadowColor = UIColor.black.cgColor
        hStack.layer.shadowOffset = CGSizeMake(0.5, 4.0); //Here your control your spread
        hStack.layer.shadowOpacity = 0.5
        hStack.layer.shadowRadius = 5.0
        return hStack
    }()
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    let scrollViewContainer: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let redView: UIView = {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 1200).isActive = true
        return view
    }()
    
    let titleTextField : UITextField = {
        
        let tf = UITextField(frame: CGRect(x: 20, y: 100, width: 350, height: 50))
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: tf.frame.height))
        tf.leftView = paddingView
        tf.leftViewMode = .always
        tf.placeholder = "Title"
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
    
    let priceTextField : UITextField = {
        
        let tf = UITextField(frame: CGRect(x: 20, y: 100, width: 350, height: 50))
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: tf.frame.height))
        tf.leftView = paddingView
        tf.leftViewMode = .always
        tf.placeholder = "Price"
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
    
    let descriptionTextField : UITextField = {
        
        let tf = UITextField(frame: CGRect(x: 20, y: 100, width: 350, height: 200))
        let paddingView = UITextView(frame: CGRect(x: 0, y: 0, width: 10, height: tf.frame.height))
        paddingView.isScrollEnabled = true
        //paddingView.textContainerInset = UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 10)
        tf.leftView = paddingView
        tf.leftViewMode = .always
        tf.placeholder = "Description"
        tf.heightAnchor.constraint(equalToConstant: 200).isActive = true
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
        // tf.contentVerticalAlignment =
        return tf
    }()
    
    let textFieldStack: UIStackView = {
        let vStack = UIStackView()
        vStack.alignment = .fill
        vStack.axis = .vertical
        vStack.translatesAutoresizingMaskIntoConstraints = false
        vStack.alignment = .leading
        vStack.spacing = 20
       // vStack.backgroundColor  = .yellow
        vStack.distribution = .fillProportionally
        vStack.isLayoutMarginsRelativeArrangement = true
        vStack.layoutMargins = UIEdgeInsets(top: 5, left: 5, bottom: 1, right: 1)
        return vStack
    }()
    
    let postButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        button.setTitle("Post", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .gray
        return button
    }()
    
    lazy var collectionView: UICollectionView = {
        let viewLayout = UICollectionViewFlowLayout()
        viewLayout.scrollDirection = .horizontal
        let cV = UICollectionView(frame: .zero, collectionViewLayout: viewLayout)
        viewLayout.itemSize = CGSize(width: view.frame.size.width/2, height: view.frame.size.width/2)
        viewLayout.sectionInset = UIEdgeInsets(top: 2, left: 2, bottom: 2, right: 2)
        cV.translatesAutoresizingMaskIntoConstraints = false
        cV.backgroundColor = .white
        cV.delegate = self
        cV.dataSource = self
        return cV
    }()
    
    // code for dynamic placeholder :
    
    // let placeholderLabel = UILabel(frame: CGRect(x: 0, y: 0, width: tf.frame.width, height: 40))
    //        placeholderLabel.text = "Title"
    //        placeholderLabel.textAlignment = .left
    //        placeholderLabel.textColor = .lightGray
    //        placeholderLabel.font = tf.font
    //        placeholderLabel.sizeToFit()
    //        tf.placeholder  = nil
    //        tf.addSubview(placeholderLabel)
    //
    //
    //
    //
    //        func textFieldDidBeginEditing(_ textField: UITextField) {
    //            if textField.text == "" {
    //                            placeholderLabel.frame.origin.y = 0
    //                        }
    //
    //        }
    //
    //        func textFieldDidEndEditing(_ textField: UITextField) {
    //            if textField.text == "" {
    //                            placeholderLabel.frame.origin.y = (tf.frame.height - placeholderLabel.frame.height) / 2
    //                        }
    //
    //        }
    //
    //
    //
    ////
    ////        func textFieldDidBeginEditing(_ textField: UITextField){
    ////
    ////        }
    ////
    ////        func textFieldDidFinishEditing(_ textField: UITextField) {
    ////
    ////        }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(topStack)
        view.backgroundColor = .white
        
        redView.addSubview(collectionView)
        redView.addSubview(textFieldStack)
        
        textFieldStack.addArrangedSubview(titleTextField)
        textFieldStack.addArrangedSubview(priceTextField)
        textFieldStack.addArrangedSubview(descriptionTextField)
        textFieldStack.addArrangedSubview(postButton)
        toHaveDefaultAddImageCell()
       
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: redView.topAnchor, constant: 15),
            collectionView.leadingAnchor.constraint(equalTo: redView.leadingAnchor, constant: 10),
            collectionView.trailingAnchor.constraint(equalTo: redView.trailingAnchor, constant: -10),
            collectionView.bottomAnchor.constraint(equalTo: redView.topAnchor, constant: 170)
        ])
        
        NSLayoutConstraint.activate([
            topStack.topAnchor.constraint(equalTo: view.topAnchor,constant: 0),
            topStack.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 0),
            topStack.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -0),
            topStack.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -700)
        ])
        
        view.addSubview(scrollView)
        scrollView.addSubview(scrollViewContainer)
        scrollViewContainer.addArrangedSubview(redView)
        
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: topStack.bottomAnchor,constant: 15).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        scrollViewContainer.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        scrollViewContainer.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        scrollViewContainer.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        scrollViewContainer.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        
        scrollViewContainer.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true

        NSLayoutConstraint.activate([
        
            textFieldStack.topAnchor.constraint(equalTo: redView.topAnchor, constant: 180),
            textFieldStack.leadingAnchor.constraint(equalTo: redView.leadingAnchor, constant: 5),
            textFieldStack.trailingAnchor.constraint(equalTo: redView.trailingAnchor, constant: -5),
            textFieldStack.bottomAnchor.constraint(equalTo: redView.bottomAnchor, constant: -320)
            ])
        
        NSLayoutConstraint.activate([
            titleTextField.topAnchor.constraint(equalTo: textFieldStack.topAnchor, constant: 10),
            titleTextField.leadingAnchor.constraint(equalTo: textFieldStack.leadingAnchor, constant: 5),
            titleTextField.trailingAnchor.constraint(equalTo: textFieldStack.trailingAnchor, constant: -5),
            titleTextField.bottomAnchor.constraint(equalTo: textFieldStack.topAnchor, constant: 60)
        ])
        
        NSLayoutConstraint.activate([
            
            priceTextField.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 20),
            priceTextField.leadingAnchor.constraint(equalTo: textFieldStack.leadingAnchor, constant: 5),
            priceTextField.trailingAnchor.constraint(equalTo: textFieldStack.trailingAnchor, constant: -5),
            priceTextField.bottomAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 70)
        ])
        
        NSLayoutConstraint.activate([
            descriptionTextField.topAnchor.constraint(equalTo: priceTextField.bottomAnchor, constant: 20),
            descriptionTextField.leadingAnchor.constraint(equalTo: textFieldStack.leadingAnchor, constant: 5),
            descriptionTextField.trailingAnchor.constraint(equalTo: textFieldStack.trailingAnchor, constant: -5),
            descriptionTextField.bottomAnchor.constraint(equalTo: textFieldStack.bottomAnchor, constant: -350)
        ])
        
        NSLayoutConstraint.activate([
        
            postButton.topAnchor.constraint(equalTo: descriptionTextField.bottomAnchor, constant: 20),
            postButton.leadingAnchor.constraint(equalTo: textFieldStack.leadingAnchor, constant: 50),
            postButton.trailingAnchor.constraint(equalTo: textFieldStack.trailingAnchor, constant: -50),
            postButton.bottomAnchor.constraint(equalTo: textFieldStack.bottomAnchor, constant: -300)
        ])
        
        collectionView.register(AddImageCell.self, forCellWithReuseIdentifier: AddImageCell.identifier)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        self.navigationController?.navigationBar.barTintColor = .gray
    }
}

extension CreateListingVC: UICollectionViewDelegate {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        uploadImagesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AddImageCell.identifier, for: indexPath) as! AddImageCell
        //
        //        cell.imageView.image = listings[indexPath.row].image
        
        // return cell
        
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: AddImageCell.identifier, for: indexPath) as! AddImageCell
        
        cell.imageView.image = uploadImagesArray[indexPath.row]
        cell.removeButton.tag = indexPath.row
        cell.removeButton.addTarget(self, action: #selector(deleteButtonTapped(_ :)), for: .touchUpInside)
        
        if(indexPath.row == 0){
            cell.removeButton.isHidden = true
        }  else  {
            
            cell.removeButton.isHidden = false
        }
        
        return cell
    }
        
    @objc func deleteButtonTapped(_ sender: UIButton) {
            let index = sender.tag
            uploadImagesArray.remove(at: index)
            DispatchQueue.main.async {
                       self.collectionView.reloadData()
                   }
        }

}

        

extension CreateListingVC: UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
}

extension CreateListingVC: UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (redView.frame.width - 2) / 4 , height: (view.frame.height - 2) / 6)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        // Implementing picker View
        if uploadImagesArray[indexPath.row] == (UIImage(named: "Add Image"))  {

                   let alert = UIAlertController(title: "Choose Image", message: nil, preferredStyle: .actionSheet)
                   alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: { _ in
                     self.openCamera()
                       print("Camera")
                   }))

                   alert.addAction(UIAlertAction(title: "Gallery", style: .default, handler: { _ in
    
                       print("Gallery")
                       
                       var config = PHPickerConfiguration()
                       config.selectionLimit = 5
           
                       let phPickerVC = PHPickerViewController(configuration: config)
                       phPickerVC.delegate = self
                       self.present(phPickerVC, animated: true)
                   }))

                   alert.addAction(UIAlertAction.init(title: "Cancel", style: .cancel, handler: nil))

                   self.present(alert, animated: true, completion: nil)
               }
        }
    }


extension CreateListingVC : PHPickerViewControllerDelegate {
    
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        dismiss(animated: true)
        for result in results {
            result.itemProvider.loadObject(ofClass: UIImage.self) { object, error in
                if let image = object as? UIImage{
                    self.uploadImagesArray.append(image)
                    
                    print("No of photos appended \(self.uploadImagesArray.count)")
                    //                    ListingData.listingExamplesData.append(ListingData(image: image, title: "addition"))
                }
                DispatchQueue.main.async {
                    self.collectionView.reloadData()
                }
            }
        }
    }
}


extension CreateListingVC: UIImagePickerControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // Handle the selected or captured media here
        // The `info` dictionary contains information about the selected or captured media
        // For example, to get the selected image:
        if let image = info[.originalImage] as? UIImage {
            
            self.uploadImagesArray.append(image)
            
        } else {
            
            print("No Image found")
        }
       
        // Dismiss the picker controller
        picker.dismiss(animated: true, completion: nil)
    }
    
    func openCamera()
    
    {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerController.SourceType.camera
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
        else
        {
            let alert  = UIAlertController(title: "Warning", message: "You don't have camera", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}
