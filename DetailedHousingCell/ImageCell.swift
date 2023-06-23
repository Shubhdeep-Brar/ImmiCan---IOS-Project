//
//  ImageCell.swift
//  ImmiCan
//
//  Created by Ramneek Kaur on 2023-04-17.
//

import Foundation
import UIKit

class ImageCell: UIViewController {

    // MARK: - Properties
    
    var detail: HouseUser?
    var imagepop = HousingData.mockImages()
    
    let contentStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 16
        stack.distribution = .fill
        stack.alignment = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    let imageScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.contentInsetAdjustmentBehavior = .never
        scrollView.backgroundColor = .clear
        
        
        return scrollView
    }()
    
    
    
    let imageView1: UIImageView = {
        let imageView = UIImageView()
        //imageView.contentMode = .scaleAspectFit
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "house")
        return imageView
    }()
    
    let imageView2: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named:"house1")
        return imageView
    }()
    
    let imageView3: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named:"house2")
        return imageView
    }()
    
    let pageControl: UIPageControl = {
            let pageControl = UIPageControl()
            pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.backgroundColor = .black
        pageControl.addTarget(ImageCell.self, action: #selector(pageControlTapHandler(sender:)), for: .allEvents)
        //pageControl.numberOfPages = houseImageViews.count
        pageControl.numberOfPages = 3
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = .lightGray
        pageControl.currentPageIndicatorTintColor = .darkGray
        
        
            return pageControl
        }()
    
    @objc func pageControlTapHandler(sender: UIPageControl) {
        let Test = tvc()
        navigationController?.pushViewController(Test, animated: true)
       }
    
    
      lazy var headingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .subheadline)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.font = .boldSystemFont(ofSize: 25)
        label.text = detail?.Heading
          label.widthAnchor.constraint(equalToConstant: 175).isActive = true
          label.heightAnchor.constraint(equalToConstant: 36).isActive = true
        return label
      }()
    
      lazy var addressLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .subheadline)
        label.font = .boldSystemFont(ofSize: 18)
        label.text = detail?.address
        label.numberOfLines = .max
        
          label.widthAnchor.constraint(equalToConstant: 300).isActive = true
          label.heightAnchor.constraint(equalToConstant: 55).isActive = true
        return label
      }()
    
      lazy var bedroomIcon : UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.heightAnchor.constraint(equalToConstant: 33).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 35.5).isActive = true
        iv.image = UIImage(named:"bedroom")
        return iv
      }()
    
      lazy var bedroomNumLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        //   label.heightAnchor.constraint(equalToConstant: 14).isActive = true
        //   label.widthAnchor.constraint(equalToConstant: 91).isActive = true
        label.font = UIFont.preferredFont(forTextStyle: .subheadline)
        label.text = detail?.bedroom
        // label.alignment = .center
        return label
      }()
    
      lazy var bedroomStack : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        //    stackView.heightAnchor.constraint(equalToConstant: 35.5).isActive = true
        //    stackView.widthAnchor.constraint(equalToConstant: 134).isActive = true
        stackView.addArrangedSubview(bedroomIcon)
        stackView.addArrangedSubview(bedroomNumLabel)
        stackView.spacing = 6
        stackView.alignment = .center
        return stackView
      }()
    
      lazy var bathroomNumLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .subheadline)
        //    label.widthAnchor.constraint(equalToConstant: 14).isActive = true
        //    label.heightAnchor.constraint(equalToConstant: 91).isActive = true
          label.text = detail?.bathroom
        return label
      }()
    
    
      lazy var bathroomIcon : UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.heightAnchor.constraint(equalToConstant: 33).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 35.5).isActive = true
        iv.image = UIImage(named:"bathroom")
        return iv
      }()
      lazy var bathroomStack : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.addArrangedSubview(bathroomIcon)
        stackView.addArrangedSubview(bathroomNumLabel)
        stackView.alignment = .center
        stackView.spacing = 6
        return stackView
      }()
      lazy var bathroomAndBedroomStack : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.addArrangedSubview(bedroomStack)
        stackView.addArrangedSubview(AreaStack)
        stackView.spacing = 8
        //    stackView.distribution = UIStackView.Distribution.equalCentering
        //    stackView.alignment = UIStackView.Alignment.fill
        stackView.alignment = .leading
        // stackView.alignment = .center
        return stackView
      }()
    
    lazy var areaLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .subheadline)
        label.text = detail?.Area
        return label
      }()
      lazy var areaIcon : UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.heightAnchor.constraint(equalToConstant: 30).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 30).isActive = true
        iv.image = UIImage(named:"Area")
        return iv
      }()
      lazy var AreaStack : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.addArrangedSubview(areaIcon)
        stackView.addArrangedSubview(areaLabel)
        stackView.spacing = 6
        stackView.alignment = .center
        return stackView
      }()
    
    
      lazy var moneyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .subheadline)
        label.text = detail?.Rent
        return label
      }()
      lazy var moneyIcon : UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.heightAnchor.constraint(equalToConstant: 30).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 30).isActive = true
        iv.image = UIImage(named:"Money")
        return iv
      }()
      lazy var moneyStack : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.addArrangedSubview(moneyIcon)
        stackView.addArrangedSubview(moneyLabel)
        stackView.spacing = 1
        stackView.alignment = .center
        return stackView
      }()
      lazy var areaAndMoneyStack : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.addArrangedSubview(bathroomStack)
        stackView.addArrangedSubview(moneyStack)
        stackView.spacing = 8
        stackView.alignment = .leading
        return stackView
      }()
      lazy var featureStack : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.addArrangedSubview(bathroomAndBedroomStack)
        stackView.addArrangedSubview(areaAndMoneyStack)
        stackView.heightAnchor.constraint(equalToConstant: 90).isActive = true
        stackView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        // stackView.distribution = UIStackView.Distribution.equalCentering
        // stackView.alignment = UIStackView.Alignment.fill
        // stackView.spacing = 8
        // stackView.alignment = .center
        // stackView.distribution = UIStackView.Distribution.equalCentering
        // stackView.alignment = UIStackView.Alignment.fill
        return stackView
      }()
      lazy var headingAddressAndFeatures : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.addArrangedSubview(headingLabel)
        stackView.addArrangedSubview(addressLabel)
        stackView.addArrangedSubview(featureStack)
        stackView.spacing = 4
//        stackView.widthAnchor.constraint(equalToConstant: 300).isActive = true
//        stackView.heightAnchor.constraint(equalToConstant: 90).isActive = true
        
        return stackView
      }()
      lazy var lineView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.heightAnchor.constraint(equalToConstant: 0).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 364).isActive = true
        iv.layer.masksToBounds = true
        iv.image = UIImage(named: "Line")
        return iv
      }()
      lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .subheadline)
        label.text = "Description"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.heightAnchor.constraint(equalToConstant: 20).isActive = true
        label.widthAnchor.constraint(equalToConstant: 190).isActive = true
        
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.font = .boldSystemFont(ofSize: 20)
        return label
      }()
      lazy var detailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .subheadline)
        label.text = detail?.Description
        label.numberOfLines = .max
        
        label.heightAnchor.constraint(equalToConstant: 360).isActive = true
        label.widthAnchor.constraint(equalToConstant: 300).isActive = true
        return label
      }()
      lazy var descriptionStack : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.addArrangedSubview(descriptionLabel)
        stackView.addArrangedSubview(detailLabel)
        stackView.spacing = 10
        stackView.sizeToFit()
        
          
        return stackView
      }()
    
    // MARK: - View Lifecycle
    
    lazy var mainScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.contentInsetAdjustmentBehavior = .never
        //scrollView.backgroundColor = .red
        return scrollView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //detail = HousingData.mockdata()[0]
        
        // Add contentStack to view
        view.addSubview(mainScrollView)
        mainScrollView.addSubview(contentStack)
        //view.addSubview(contentStack)
        
//        NSLayoutConstraint.activate([
//            contentStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
//            contentStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
//            contentStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
//            contentStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0)
//        ])
        
        // Add containerView to contentStack
        contentStack.addArrangedSubview(containerView)
        contentStack.addArrangedSubview(headingAddressAndFeatures)
        contentStack.addArrangedSubview(lineView)
        contentStack.addArrangedSubview(descriptionStack)
        //contentStack.addSubview(scrollView)

        
        //contentStack.addSubview(containerView)
        
        // Add imageScrollView to containerView
        containerView.addSubview(imageScrollView)
        imageScrollView.delegate = self
        NSLayoutConstraint.activate([
            imageScrollView.topAnchor.constraint(equalTo: containerView.topAnchor),
            imageScrollView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            imageScrollView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
//            imageScrollView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 400)
            imageScrollView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
        ])
        
        // Add image views to imageScrollView
        imageScrollView.addSubview(imageView1)
        imageScrollView.addSubview(imageView2)
        imageScrollView.addSubview(imageView3)
        NSLayoutConstraint.activate([
            imageView1.topAnchor.constraint(equalTo: imageScrollView.topAnchor),
            imageView1.leadingAnchor.constraint(equalTo: imageScrollView.leadingAnchor),
            imageView1.heightAnchor.constraint(equalTo: imageScrollView.heightAnchor),
            imageView1.widthAnchor.constraint(equalTo: imageScrollView.widthAnchor),
            
            imageView2.topAnchor.constraint(equalTo: imageScrollView.topAnchor),
            imageView2.leadingAnchor.constraint(equalTo: imageView1.trailingAnchor),
            imageView2.heightAnchor.constraint(equalTo: imageScrollView.heightAnchor),
            imageView2.widthAnchor.constraint(equalTo: imageScrollView.widthAnchor),
            
            imageView3.topAnchor.constraint(equalTo: imageScrollView.topAnchor),
            imageView3.leadingAnchor.constraint(equalTo: imageView2.trailingAnchor),
            imageView3.trailingAnchor.constraint(equalTo: imageScrollView.trailingAnchor),
            imageView3.heightAnchor.constraint(equalTo: imageScrollView.heightAnchor),
            imageView3.widthAnchor.constraint(equalTo: imageScrollView.widthAnchor),
        ])
        
        
        // Add page control to containerView
        
        containerView.addSubview(pageControl)
        //containerView.backgroundColor = .green
        containerView.bringSubviewToFront(pageControl)
        
        NSLayoutConstraint.activate([
            pageControl.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            pageControl.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -10)
        ])
        
        
        NSLayoutConstraint.activate([
            containerView.widthAnchor.constraint(equalTo: imageScrollView.widthAnchor),
            containerView.topAnchor.constraint(equalTo: contentStack.topAnchor),
            containerView.heightAnchor.constraint(equalTo: contentStack.heightAnchor, multiplier: 0.3)
        ])
         
        
        NSLayoutConstraint.activate([
            mainScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainScrollView.topAnchor.constraint(equalTo: view.topAnchor),
            mainScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        
        NSLayoutConstraint.activate([
            contentStack.leadingAnchor.constraint(equalTo: mainScrollView.leadingAnchor),
            contentStack.trailingAnchor.constraint(equalTo: mainScrollView.trailingAnchor),
            contentStack.topAnchor.constraint(equalTo: mainScrollView.topAnchor),
            contentStack.bottomAnchor.constraint(equalTo: mainScrollView.bottomAnchor),
            contentStack.widthAnchor.constraint(equalTo: mainScrollView.widthAnchor)
        ])
        
        
        NSLayoutConstraint.activate([
            contentStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            contentStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            contentStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            contentStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            contentStack.heightAnchor.constraint(equalToConstant: 1000)
        ])
        
    }

    override func viewDidLayoutSubviews() {
        
//        mainScrollView.backgroundColor = .yellow
//        mainScrollView.contentSize = CGSize(width: 375, height: 2000)
    }
}



extension ImageCell: UIScrollViewDelegate {
  func scrollViewDidScroll(_ scrollView: UIScrollView) {
      let pageIndex = round(scrollView.contentOffset.x / scrollView.bounds.width)
      pageControl.currentPage = Int(pageIndex)
    }
}

