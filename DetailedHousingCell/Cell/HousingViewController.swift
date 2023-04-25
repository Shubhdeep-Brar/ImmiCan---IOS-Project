//
//  HousingViewController.swift
//  Trip
//
//  Created by Ramneek Kaur on 2023-03-24.
//

import Foundation
import UIKit
class HousingViewController: UIViewController {
   
    let data = HousingData.mockdata()
    
    lazy var HousingViewController: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(IntroductoryHousingCell.self, forCellReuseIdentifier: "cell1")
        tableView.register(HousingCell.self, forCellReuseIdentifier: "cell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .white
        
        
        return tableView
    }()
    override func viewDidLoad(){
//        title = "Housing"
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        view.addSubview(HousingViewController)
        HousingViewController.sectionHeaderHeight = UITableView.automaticDimension
        NSLayoutConstraint.activate([
            HousingViewController.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            HousingViewController.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            HousingViewController.topAnchor.constraint(equalTo: view.topAnchor, constant: -50),
            HousingViewController.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
    }
}
extension HousingViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionData = data
        return sectionData.count + 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 && indexPath.row == 0 {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1",for: indexPath) as! IntroductoryHousingCell
            
            cell1.layer.masksToBounds = true
            cell1.backgroundColor = .lightGray
            
            return cell1
        } else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! HousingCell
            
            let cellData = data[indexPath.row - 1]
            cell.updateView(image : cellData.image,
                            Heading : cellData.Heading,
                            address : cellData.address,
                            bedroom : cellData.bedroom,
                            bathroom : cellData.bathroom,
                            Rent : cellData.Rent)
            
            cell.layer.masksToBounds = true
            cell.layer.cornerRadius = 10
            cell.layer.shadowOffset = CGSize (width: 0, height: 4)
            cell.layer.shadowRadius = 1
            return cell
        }
    }
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        let headerTitle = data[section].0
//        return headerTitle
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row != 0 {
            let data = (HousingData.mockdata())[indexPath.row - 1 ]
            
            let houseUser = HouseUser(image: data.image, Heading: data.Heading, address: data.address, bedroom: data.bedroom, bathroom: data.bathroom, Rent: data.Rent, Area: data.Area, Garage: data.Garage, Description: data.Description)
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "ImageCell") as! ImageCell
            
            vc.detail = houseUser
            
            
            
            self.navigationController?.pushViewController(vc, animated: true)
        }}
}
