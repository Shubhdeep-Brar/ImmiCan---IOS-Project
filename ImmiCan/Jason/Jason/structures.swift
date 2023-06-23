//
//  structures.swift
//  Jason
//
//  Created by Ramneek Kaur on 2023-06-19.
//

import Foundation
import UIKit
struct book: Codable {
    var items : [Total_items]?
}

//struct Total_items : Codable {
//    var data : Datainfo
//}
struct Total_items: Codable {
    var info : info
}

struct info : Codable {
    var title : String
    var subtitle : String
    var description : description
   // var imagelink : imagelink

}

struct description : Codable{
    var text : String
}

//
