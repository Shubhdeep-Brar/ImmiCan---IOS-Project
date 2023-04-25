//
//  JobPageScrollView.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-04-10.
//

import Foundation
import UIKit

class JobPageScrollView: ViewController {
    
      
        private let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        }()
        
        private let scrollStackViewContainer: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        }()

        private func setupScrollView() {
            let margins = view.layoutMarginsGuide
            view.addSubview(scrollView)
            scrollView.addSubview(scrollStackViewContainer)
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 17).isActive = true
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -17).isActive = true
            scrollView.topAnchor.constraint(equalTo: margins.topAnchor,constant: 40).isActive = true
            scrollView.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: 10).isActive = true
            scrollStackViewContainer.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
            scrollStackViewContainer.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
            scrollStackViewContainer.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
            scrollStackViewContainer.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
            scrollStackViewContainer.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
            configureContainerView()
            }
        
//            private func configureContainerView() {
//            scrollStackViewContainer.addArrangedSubview(completeStack)
//        
//            }
        }

        


    }
}
