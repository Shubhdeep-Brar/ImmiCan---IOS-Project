//
//  HousingData.swift
//  Trip
//
//  Created by Ramneek Kaur on 2023-03-22.
//

import Foundation
import UIKit

class HousingData {
    
    
    
    static func mockdata() -> [HouseUser]  {
        var Section: [HouseUser] = []
        
        Section.append(HouseUser(image: UIImage(named: "house"), Heading: "Housing", address: "106A avenue \n V3T2E4", bedroom: "3", bathroom: "2", Rent: "$1000",Area :"2000 Sq", Garage: "1", Description: "3 room house with 3 bedrooms, fully furnished. Looking to rent with atleast lease 6 months. \nSerious inquries only.\nAvailable date: 1 May3 room house with 3 bedrooms, fully furnished. Looking to rent with atleast lease 6 months. \nSerious inquries only.\nAvailable date: 1 May"))
        Section.append(HouseUser(image: UIImage(named: "house"), Heading: "Townhouse", address: "1375 Kingsway, Pocoq\n V3T2E4", bedroom: "2", bathroom: "1", Rent: "$1600",Area :"2000 Sq", Garage: "1", Description: "3 room house with 3 bedrooms, fully furnished. Looking to rent with atleast lease 6 months. \nSerious inquries only. \nAvailable date: 1 May 3 room house with 3 bedrooms, fully furnished. Looking to rent with atleast lease 6 months. \nSerious inquries only.\nAvailable date: 1 May3 room house with 3 bedrooms, fully furnished. Looking to rent with atleast lease 6 months. \nSerious inquries only.\nAvailable date: 1 May3 room house with 3 bedrooms, fully furnished. Looking to rent with atleast lease 6 months. \nSerious inquries only.\nAvailable date: 1 May3 room house with 3 bedrooms, fully furnished. Looking to rent with atleast lease 6 months. \nSerious inquries only.\nAvailable date: 1 May"))
        Section.append(HouseUser(image: UIImage(named: "house"), Heading: "Housing", address: "13027 106A avenue\n V3T2E4", bedroom: "3", bathroom: "2", Rent: "$3100", Area :"2000 Sq", Garage: "1", Description: "3 room house with 3 bedrooms, fully furnished. Looking to rent with atleast lease 6 months. \nSerious inquries only. \nAvailable date: 1 May"))
        Section.append(HouseUser(image: UIImage(named: "house"), Heading: "Townhouse", address: "1375 Kingsway, Pocoq\n V3T2E4", bedroom: "2", bathroom: "1", Rent: "$2200", Area :"2000 Sq", Garage: "1", Description: "3 room house with 3 bedrooms, fully furnished. Looking to rent with atleast lease 6 months. \nSerious inquries only. \nAvailable date: 1 May"))
        Section.append(HouseUser(image: UIImage(named: "house"), Heading: "Townhouse", address: "1375 Kingsway, Pocoq", bedroom: "2", bathroom: "1", Rent: "$1600", Area :"2900 Sq", Garage: "1", Description: "3 room house with 3 bedrooms, fully furnished. Looking to rent with atleast lease 6 months. \nSerious inquries only. \nAvailable date: 1 May"))
        return Section
    }
    
    
    static func mockImages () -> [Image]{
        var mockImages: [Image] = []
        mockImages.append(Image(image: UIImage(named: "house")))
        mockImages.append(Image(image: UIImage(named: "house1")))
        mockImages.append(Image(image: UIImage(named: "house2")))
        return mockImages
    }
    }
