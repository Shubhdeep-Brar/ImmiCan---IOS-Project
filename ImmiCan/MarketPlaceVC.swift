//
//  MarketPlaceVC.swift
//  ImmiCan
//
//  Created by Shubhdeep on 2023-04-03.
//

import Foundation
import UIKit

class MarketPlaceVC: UIViewController {
    
    
    let data = MarketPlaceDataProvider.mockMarketplaceCellData()
    let topViewData = MarketPlaceDataProvider.mockDataMarketplaceTopView()
    
    lazy var collectionView: UICollectionView = {
        let viewLayout = UICollectionViewFlowLayout()
        viewLayout.scrollDirection = .vertical
        let cV = UICollectionView(frame: .zero, collectionViewLayout: viewLayout)
        viewLayout.itemSize = CGSize(width: view.frame.size.width/3, height: view.frame.size.width/3)
        viewLayout.sectionInset = UIEdgeInsets(top: 15, left: 0, bottom: 0, right: 0)
        cV.translatesAutoresizingMaskIntoConstraints = false
        cV.delegate = self
        cV.dataSource = self
        return cV
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(collectionView)
        self.navigationController?.navigationBar.barTintColor = .gray

        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        collectionView.register(MarketPlaceCell.self, forCellWithReuseIdentifier: MarketPlaceCell.identifier)
        collectionView.register(MarketPlaceHeaderReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: MarketPlaceHeaderReusableView.identifier)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }

}

extension MarketPlaceVC: UICollectionViewDelegate {
//
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
//        return UIEdgeInsets(top: 10.0, left: 1.0, bottom: 1.0, right: 1.0)
//    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
       // let cellIntro = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MarketPlaceIntroCell
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MarketPlaceCell.identifier, for: indexPath) as! MarketPlaceCell
        
        cell.imageView.image = data[indexPath.row].image
        cell.descLabel.text = data[indexPath.row].description
        
  
        return cell
    }
    
}

extension MarketPlaceVC: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1.0, left: 1.0, bottom: 10.0, right: 1.0)
    }
}

extension MarketPlaceVC: UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
      //  let height = collectionView.frame.height
        return CGSize(width: (view.frame.width - 1) / 2, height: (view.frame.height - 2) / 4)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
}


extension MarketPlaceVC {
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: MarketPlaceHeaderReusableView.identifier, for: indexPath) as! MarketPlaceHeaderReusableView
        
        header.setupView()
        header.avatarView.image = topViewData[indexPath.row].image
        header.welcomeLabel.text = topViewData[indexPath.row].name
        header.pageTitleLabel.text = topViewData[indexPath.row].title
        header.backgroundColor = .gray
        header.sellButton.addTarget(self, action: #selector(sellButtonTapped(_ :)), for: .touchUpInside)
       // header.updateView(image: header.avatarView.image, name: "\(header.welcomeLabel)", title: "\(header.pageTitleLabel)")
        return header
    }
    
    @objc func sellButtonTapped(_ sender: UIButton) {
        
        self.navigationController?.pushViewController(CreateListingVC(), animated: true)
//            navVC.pushViewController(CreateListingVC(), animated: true)
//            self.present(navVC, animated: true, completion: nil)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.size.width,
        height: 200)
        
    }
}
