//
//  MarketPlaceData.swift
//  ImmiCan
//
//  Created by Shubhdeep on 2023-04-05.
//

import Foundation
import UIKit

class MarketPlaceDataProvider {
    
    static func mockMarketplaceCellData() -> [MarketPlaceCVData] {
       return
        [
        MarketPlaceCVData(image: UIImage(named: "book"), description: "Educated book $50" ),
        MarketPlaceCVData(image: UIImage(named: "sofa"), description: "Lightly Used Sofa $350"),
        MarketPlaceCVData(image: UIImage(named: "car"),description: "Cruze $8400"),
        MarketPlaceCVData(image: UIImage(named: "house"),description: "Townhouse Rent $3300"),
        MarketPlaceCVData(image: UIImage(named: "books"),description: "Books $170"),
        MarketPlaceCVData(image: UIImage(named: "chair"),description: "Grey Chair $120"),
        MarketPlaceCVData(image: UIImage(named: "sofa"),description: "Loveseat $900"),
        MarketPlaceCVData(image: UIImage(named: "desk"),description: "Desk $40")

        ]

    }
    
    static func mockDataMarketplaceTopView() -> [MarketPlaceTopView] {
        return [
        
            MarketPlaceTopView(image: UIImage(named: "profilePic"), name: "Hi! Alex\nWelcome to Marketplace", title: "Marketplace")
            
        ]
        
    }
   
    
}
