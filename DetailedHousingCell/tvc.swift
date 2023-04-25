//
//  tvc.swift
//  ImmiCan
//
//  Created by Ramneek Kaur on 2023-04-11.
//

import Foundation
import UIKit

class tvc: UIViewController, UIScrollViewDelegate {
    
    let scrollView = UIScrollView()
    let pageControl = UIPageControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add the scroll view to the view controller's view
        view.addSubview(scrollView)
        
        // Add the page control to the view controller's view
        view.addSubview(pageControl)
        
        // Configure the scroll view
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.delegate = self
        scrollView.isPagingEnabled = true
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
                 scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                ])
        
        // Add the image views to the scroll view
        let imageView1 = UIImageView(image: UIImage(named: "house"))
        let imageView2 = UIImageView(image: UIImage(named: "house1"))
        let imageView3 = UIImageView(image: UIImage(named: "house2"))
        
        let imageViews = [imageView1, imageView2, imageView3]
        
        for (index, imageView) in imageViews.enumerated() {
            scrollView.addSubview(imageView)
           imageView.contentMode = .scaleAspectFit
            imageView.translatesAutoresizingMaskIntoConstraints = false
            
            // Set the image view's size and position
            NSLayoutConstraint.activate([
                imageView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
                imageView.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
                imageView.topAnchor.constraint(equalTo: scrollView.topAnchor),
                imageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: CGFloat(index) * view.bounds.width),
            ])
        }
        
        // Set the scroll view's content size based on the number of image views
        scrollView.contentSize = CGSize(width: view.bounds.width * CGFloat(imageViews.count), height: view.bounds.height)
        
        // Configure the page control
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.numberOfPages = imageViews.count
        
        // Set constraints for the page control
        NSLayoutConstraint.activate([
            pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pageControl.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
        ])
        pageControl.backgroundColor = .blue
    }
    
    // MARK: - UIScrollViewDelegate
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x / scrollView.bounds.width)
        pageControl.currentPage = Int(pageIndex)
      }
    }


