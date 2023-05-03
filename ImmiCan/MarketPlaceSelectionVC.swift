//
//  MarketPlaceSelectionVC.swift
//  ImmiCan
//
//  Created by Shubhdeep on 2023-04-27.
//
import Foundation
import UIKit

class MarketPlaceSelectionVC: UIViewController {

    // MARK: - Properties
    
//    var detail: HouseUser?
//    var imagepop = HousingData.mockImages()
//
    let contentStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 16
        stack.distribution = .fill
        stack.backgroundColor = .white
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
        pageControl.backgroundColor = .clear
        pageControl.addTarget(MarketPlaceSelectionVC.self, action: #selector(pageControlTapHandler(sender:)), for: .allEvents)
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
       // label.text = detail?.Heading
        label.text = "Car For Sale"
        label.widthAnchor.constraint(equalToConstant: 175).isActive = true
        label.heightAnchor.constraint(equalToConstant: 36).isActive = true
        return label
      }()
    
      lazy var addressLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .subheadline)
        label.font = .boldSystemFont(ofSize: 18)
        //label.text = detail?.address
        label.text = "Surrey, B.C."
        label.numberOfLines = .max
        label.widthAnchor.constraint(equalToConstant: 300).isActive = true
        label.heightAnchor.constraint(equalToConstant: 55).isActive = true
        return label
      }()
    
      lazy var headingAddressAndFeatures : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.addArrangedSubview(headingLabel)
        stackView.addArrangedSubview(addressLabel)
        //stackView.addArrangedSubview(featureStack)
        stackView.spacing = 4
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
      //  label.text = detail?.Description
          label.text = "2014 Chevrolet Cruze LT  Excellent condition car for sale in Vancouver  Make: Chevrolet Model: Cruze LT  Year: 2014 Mileage: 164288 Title: Clean Exterior: Black Interior: Black and Red Fabric Condition: Very Good Doors: 4 Passengers: 5 Engine: 1.4 L 4-Cyl Turbo Body type: Sedan With many more options The car is in very good condition with very nice Interior, sunroof, rearview camera,  with many more options. CarFax is available with the car.  Lowest on the market for this condition  (ST: BL12, DL: 28003) doc fees 195 and taxes are not included.  Message for more info"
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
        
        // Add contentStack to view
        view.addSubview(mainScrollView)
        mainScrollView.addSubview(contentStack)
        
        // Add containerView to contentStack
        contentStack.addArrangedSubview(containerView)
        contentStack.addArrangedSubview(headingAddressAndFeatures)
        contentStack.addArrangedSubview(lineView)
        contentStack.addArrangedSubview(descriptionStack)
    
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



extension MarketPlaceSelectionVC: UIScrollViewDelegate {
  func scrollViewDidScroll(_ scrollView: UIScrollView) {
      let pageIndex = round(scrollView.contentOffset.x / scrollView.bounds.width)
      pageControl.currentPage = Int(pageIndex)
    }
}

