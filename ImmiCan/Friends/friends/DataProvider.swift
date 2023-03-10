//
//  DataProvider.swift
//  ImmiCan
//
//  Created by Ramneek Kaur on 2023-03-07.
//

import Foundation
import UIKit

class DataProvider {
    
    static func makeMockData() -> [(String,[User])] {
        var aSection: [User] = []
        var bSection: [User] = []
        var cSection: [User] = []
        
        aSection.append(
            User(nickName: "Alex Valley", location: "Vancouver", age: "23", image: UIImage(named: "photo1")))
        aSection.append(User(nickName: "Ali Stanton", location: "Vancouver", age: "29", image: UIImage(named: "photo2")))
        bSection.append(User(nickName: "Brian Seif", location: "Montreal", age: "32", image: UIImage(named: "photo3")))
        bSection.append(User(nickName: "Briad ", location: "Calgary", age: "34", image: UIImage(named: "photo1")))
        bSection.append(User(nickName: "Brian Seif", location: "Montreal", age: "32", image: UIImage(named: "photo1")))
        bSection.append(User(nickName: "Brin Seif", location: "Montreal", age: "32", image: UIImage(named: "photo1")))
        cSection.append(User(nickName: "Cat Brain", location: "Toronto", age: "27", image: UIImage(named: "photo2")))
        cSection.append(User(nickName: "Cat Br", location: "Toronto", age: "27", image: UIImage(named: "photo2")))
        cSection.append(User(nickName: "Cathy", location: "Montreal", age: "32", image: UIImage(named: "photo3")))
        cSection.append(User(nickName: "Calmore hofman", location: "Montreal", age: "23", image: UIImage(named: "photo1")))
        cSection.append(User(nickName: "Catriana", location: "Winnipeg", age: "34", image: UIImage(named: "photo2")))
        
        return[("A", aSection),
               ("B", bSection),
               ("C", cSection)]
    }
}
