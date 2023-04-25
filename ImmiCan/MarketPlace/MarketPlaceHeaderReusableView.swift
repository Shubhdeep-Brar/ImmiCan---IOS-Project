//
//  MarketPlaceCell.swift
//  ImmiCan
//
//  Created by Shubhdeep on 2023-04-03.
//

import Foundation

import UIKit

class MarketPlaceHeaderReusableView: UICollectionReusableView {


   static  let identifier = "MarketPlaceHeader"

    lazy var avatarView: UIImageView = {
        let profilePic = UIImageView()
        profilePic.translatesAutoresizingMaskIntoConstraints = false
        profilePic.heightAnchor.constraint(equalToConstant: 60).isActive = true
        profilePic.widthAnchor.constraint(equalToConstant: 60).isActive = true
        profilePic.layer.cornerRadius = 30
        return profilePic
    }()

    lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.font = .boldSystemFont(ofSize: 18)
        label.heightAnchor.constraint(equalToConstant: 50).isActive = true
        label.widthAnchor.constraint(equalToConstant: 150).isActive = true
        label.numberOfLines = 2
        return label
    }()

    lazy var pageTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .headline)
        label.font = .boldSystemFont(ofSize: 22)
        return label
    }()

    lazy var buyButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Buy", for: .normal)
        button.backgroundColor = .black
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.widthAnchor.constraint(equalToConstant: 60).isActive = true
        return button
    }()

    lazy var sellButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sell", for: .normal)
        button.backgroundColor = .black
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.widthAnchor.constraint(equalToConstant: 60).isActive = true
        return button
    }()
//
//    lazy var searchBar: UISearchBar = {
//        let bar = UISearchBar()
//        bar.translatesAutoresizingMaskIntoConstraints = false
//        bar.frame = CGRect(x:0, y: 0, width: frame.width, height: 50)
//        bar.placeholder = "Search"
//        let searchIconUIImage = UIImage(named: "searchIcon")
//        bar.backgroundColor = .clear
//        bar.setImage(searchIconUIImage, for: .search, state: .normal)
//        return bar
//    }()
    
    lazy var textField: UITextField = {
      let searchField = UITextField()
      searchField.placeholder = "Search"
      searchField.layer.cornerRadius = 29
      searchField.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
      searchField.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
      searchField.layer.shadowOpacity = 1
      searchField.layer.shadowRadius = 4
      searchField.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
      searchField.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
      searchField.layer.borderWidth = 0.5
      searchField.addConstraint(searchField.heightAnchor.constraint(equalToConstant: 50))
      searchField.returnKeyType = UIReturnKeyType.done
      searchField.clearButtonMode = UITextField.ViewMode.whileEditing
      searchField.font = UIFont.systemFont(ofSize: 15)
      searchField.leftViewMode = UITextField.ViewMode.always
      let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
      let image = UIImage(named: "searchIcon")
      imageView.image = image
      searchField.leftView = imageView
      return searchField
    }()

    lazy var buttonStack: UIStackView = {
        let hStackView = UIStackView()
        hStackView.translatesAutoresizingMaskIntoConstraints = false
        hStackView.axis = .horizontal
        hStackView.addArrangedSubview(buyButton)
        hStackView.addArrangedSubview(sellButton)
        hStackView.alignment = .trailing
        hStackView.distribution = .fill
        //hStackView.heightAnchor.constraint(equalToConstant: 20).isActive = true
      //  hStackView.widthAnchor.constraint(equalToConstant: 10).isActive = true
        hStackView.spacing = 10
        hStackView.isLayoutMarginsRelativeArrangement = true
        hStackView.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        return hStackView
    }()

    lazy var titleButtonsStack: UIStackView = {
        let hStackView = UIStackView()
        hStackView.translatesAutoresizingMaskIntoConstraints = false
        hStackView.addArrangedSubview(pageTitleLabel)
        hStackView.addArrangedSubview(buttonStack)
        hStackView.alignment = .leading
        hStackView.axis = .horizontal
        hStackView.distribution = .fillProportionally
//        hStackView.heightAnchor.constraint(equalToConstant: 20).isActive = true
//        hStackView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        hStackView.spacing = 30
      //  hStackView.backgroundColor = .green
        hStackView.isLayoutMarginsRelativeArrangement = true
        hStackView.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        return hStackView
    }()


    lazy var welcomeStack: UIStackView = {
        let hStack = UIStackView()
        hStack.translatesAutoresizingMaskIntoConstraints = false
        hStack.axis = .horizontal
        hStack.addArrangedSubview(avatarView)
        hStack.addArrangedSubview(welcomeLabel)
        hStack.alignment = .leading
      //  hStack.backgroundColor = .red
        hStack.spacing = 10
        hStack.distribution = .fillProportionally
        hStack.isLayoutMarginsRelativeArrangement = true
        hStack.layoutMargins = UIEdgeInsets(top: 5, left: 5, bottom: 1, right: 1)
        return hStack
    }()

    lazy var contentStack: UIStackView = {
        let content = UIStackView()
        content.addArrangedSubview(welcomeStack)
        content.addArrangedSubview(titleButtonsStack)
        content.addArrangedSubview(textField)
        content.translatesAutoresizingMaskIntoConstraints = false
        content.alignment = .leading
        content.axis = .vertical
        content.spacing = 10
        content.alignment = .fill
        content.distribution = .fill
        content.isLayoutMarginsRelativeArrangement = true
        content.layoutMargins = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 0)
        content.backgroundColor = .gray
        return content

    }()

    func setupView() {
        addSubview(contentStack)
        //contentStack.frame = contentView.bounds
//        contentView.addSubview(contentStack)

//        NSLayoutConstraint.activate([
//            welcomeStack.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 0),
//            welcomeStack.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor,constant: -150),
//            welcomeStack.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 4),
//            welcomeStack.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10)
//
//        ])
        NSLayoutConstraint.activate([contentStack.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
          contentStack.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -2),
            contentStack.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 10),
           contentStack.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor,constant: -10)
                                 ])

    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    override init(frame: CGRect){
        super.init(frame: frame)
        setupView()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        contentStack.frame = bounds
    }

    func updateView(

    image: UIImage?,
    name: String,
    title: String
    )
    {
        avatarView.image = image
        pageTitleLabel.text = title
        welcomeLabel.text = "Hi! \(name) Welcome to \(title)"
    }
}


