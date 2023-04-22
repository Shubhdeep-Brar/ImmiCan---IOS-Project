//
//  AddImageCell.swift
//  ImmiCan
//
//  Created by Shubhdeep on 2023-04-13.
//

import Foundation
import UIKit

class AddImageCell: UICollectionViewCell {
    
    static let identifier =  "addImageCell"
    
    lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .yellow
        return image
    }()
    
    lazy var removeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "removeIcon"), for: .normal)
        button.backgroundColor = .systemGray
        button.isUserInteractionEnabled = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: 20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 20).isActive = true
        return button
    }()
    
    func setupView() {
        
        contentView.addSubview(imageView)
        contentView.addSubview(removeButton)
        
    
    }
    
    required init?(coder: NSCoder){
        super.init(coder: coder)
        setupView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
            
            imageView.frame = CGRect(x: 0, y: 0,
                width: contentView.frame.size.width - 2,
                height: contentView.frame.size.height)
            removeButton.frame = CGRect(x: 0, y: 0,
                                     width: 20, height: 20)
        }
        
    
    func updateView(
        
        image : UIImage?
        
    )
    
    {
     imageView.image = image
    }
    
}
