//
//  MarketPlaceCell.swift
//  ImmiCan
//
//  Created by Shubhdeep on 2023-04-05.
//

import Foundation
import UIKit

class MarketPlaceCell: UICollectionViewCell {
    
    static let identifier = "customCell"
    
    lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .yellow
        return image
    }()
    
    lazy var descLabel: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .subheadline)
        return label
    }()
    
//    lazy var cellStack: UIStackView = {
//
//        let vStack = UIStackView()
//        vStack.axis = .vertical
//        vStack.addArrangedSubview(imageView)
//        vStack.addArrangedSubview(descLabel)
//        vStack.spacing = 20
//        vStack.backgroundColor = .green
//        vStack.isLayoutMarginsRelativeArrangement = true
//        vStack.layoutMargins = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
//        return vStack
//    }()

    
    func setupView() {
       // contentView.addSubview(cellStack)
        contentView.addSubview(imageView)
        contentView.addSubview(descLabel)
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
        
//        cellStack.frame = CGRect(x: 5, y: 0,
//            width: contentView.frame.size.width-10,
//            height: contentView.frame.size.height)
//
        descLabel.frame = CGRect(x: 5,
                                 y: contentView.frame.size.height-50,
                                 width: contentView.frame.size.width-10,
                                 height: 65)
        
        imageView.frame = CGRect(x: 0, y: 0,
            width: contentView.frame.size.width-2,
            height: contentView.frame.size.height-30)
    }
    
    func updateView (
        
    image: UIImage?,
    description: String
    )
    
    {
        imageView.image = image
        descLabel.text = description
    }
    
    
}

    
    

