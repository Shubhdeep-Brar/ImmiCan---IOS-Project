//
//  FinalJobApplication.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-04-20.
//

import Foundation
import UIKit

class FinalJobSubmission : UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(finalStack)
        NSLayoutConstraint.activate([
            finalStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26),
            finalStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -17),
            finalStack.topAnchor.constraint(equalTo: view.topAnchor,constant: 186),
            finalStack.bottomAnchor.constraint(equalTo: view.topAnchor,constant: 114),
            
        ])
        
//        NSLayoutConstraint.activate([
//            avatarView.leadingAnchor.constraint(equalTo: finalStack.leadingAnchor, constant: 125),
//            avatarView.trailingAnchor.constraint(equalTo: finalStack.trailingAnchor, constant: -139)
//        ])

        
        
    }
    
    lazy var avatarView : UIImageView = {
        let  image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.heightAnchor.constraint(equalToConstant: 83).isActive = true
        image.widthAnchor.constraint(equalToConstant: 80).isActive = true
        image.image = UIImage(named: "checkMark")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var appliedLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Roboto",size: 18.0)
        label.font = UIFont.boldSystemFont(ofSize: 18.0)
        label.widthAnchor.constraint(equalToConstant: 225).isActive = true
        label.heightAnchor.constraint(equalToConstant: 28).isActive = true
        label.text = "Job successfully applied"
        label.textAlignment = .center
        label.textColor = .gray
        return label
    }()
    
    
    lazy var secondLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Roboto",size: 15.0)
        label.font = UIFont.boldSystemFont(ofSize: 15.0)
        label.widthAnchor.constraint(equalToConstant: 197).isActive = true
        label.heightAnchor.constraint(equalToConstant: 36).isActive = true
        label.text = "We will let you know about the next step. Please hang tight."
        label.textAlignment = .center
        label.textColor = .gray
        label.numberOfLines = .max
        return label
    }()
    
    lazy var  searchOtherJobsButton : UIButton = {
        let button = UIButton()
        button.setTitle("Search other Jobs", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.widthAnchor.constraint(equalToConstant: 347).isActive = true
        button.heightAnchor.constraint(equalToConstant: 57).isActive = true
        button.layer.masksToBounds = true
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
//        button.addTarget(self, action: #selector(self.buttonTapped(_:)), for: .touchUpInside)
        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        button.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        button.layer.shadowOpacity = 1
        button.layer.cornerRadius = 29
        button.backgroundColor = UIColor(hexString: "D9D9D9")
        return button
    }()
    
    
    lazy var  goToHomeButton : UIButton = {
        let button = UIButton()
        button.setTitle("Go To Home", for: .normal)
        button.setTitleColor(UIColor(hexString: "979797"), for: .normal)
        button.widthAnchor.constraint(equalToConstant: 110).isActive = true
        button.heightAnchor.constraint(equalToConstant: 23).isActive = true
        button.layer.masksToBounds = true
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
//        button.addTarget(self, action: #selector(self.buttonTapped(_:)), for: .touchUpInside)
        button.backgroundColor = .black
        return button
    }()
    
    lazy var stack1: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 45
        stackView.addArrangedSubview(appliedLabel)
        stackView.addArrangedSubview(secondLabel)
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    lazy var stack2: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 31
        stackView.addArrangedSubview(searchOtherJobsButton)
        stackView.addArrangedSubview(goToHomeButton)
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    lazy var bottomStack: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 79
        stackView.addArrangedSubview(stack1)
        stackView.addArrangedSubview(stack2)
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    lazy var finalStack : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 165
        stackView.addArrangedSubview(avatarView)
        stackView.addArrangedSubview(bottomStack)
        //stackView.distribution = .
      //  stackView.sizeToFit()
        
        return stackView
    }()
    
    
    
    
}

extension UIColor {
    convenience init(hexString: String) {
        let scanner = Scanner(string: hexString)
      //  scanner.scanLocation = 0

        var rgbValue: UInt64 = 0

        scanner.scanHexInt64(&rgbValue)

        let r = (rgbValue & 0xFF0000) >> 16
        let g = (rgbValue & 0x00FF00) >> 8
        let b = rgbValue & 0x0000FF

        self.init(red: CGFloat(r) / 0xFF, green: CGFloat(g) / 0xFF, blue: CGFloat(b) / 0xFF, alpha: 1.0)
    }
}
