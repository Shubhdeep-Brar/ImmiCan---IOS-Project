//
//  ListingData.swift
//  ImmiCan
//
//  Created by Shubhdeep on 2023-04-14.
//

import Foundation
import UIKit

struct ListingData {
    
var image: UIImage?
var title: String
static var listingExamplesData = mockDataListing()
    
    
    
    static func mockDataListing() -> [ListingData] {
        return [
            ListingData(image: UIImage(named: "Add Image"), title: "Add Image"),
            ListingData(image: UIImage(named: "book"), title: "Book"),
            ListingData(image: UIImage(named: "books"), title: "Books"),
            ListingData(image: UIImage(named: "car"), title: "Cruze"),
            ListingData(image: UIImage(named: "chair"), title: "Chair")
            
        ]
        
    }
    

  
   
}
