//
//  ManageProfileVC.swift
//  ImmiCan
//
//  Created by Shubhdeep on 2023-02-22.
//

import Foundation
import UIKit

class ProfileVC: UIViewController {
   
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var accountInformation: UITableView!
    var profileData = ProfileDataProvider.provideProfileInformation()
    var profileData2 = ProfileDataProvider2.provideProfileInformation2()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Profile"
        
        //view.addSubview(tableView)
        
        accountInformation.delegate = self
        accountInformation.dataSource = self
        accountInformation.register(ProfileDataCell.self, forCellReuseIdentifier: "cell1")
        accountInformation.register(ProfileDataCell2.self, forCellReuseIdentifier: "cell")
        accountInformation.translatesAutoresizingMaskIntoConstraints = false

        accountInformation.layer.cornerRadius = 15
        accountInformation.layer.shadowColor = UIColor(red: 0.565, green: 0.565, blue: 0.565, alpha: 0.3).cgColor
        accountInformation.layer.shadowOpacity = 1
        accountInformation.layer.shadowRadius = 10
        accountInformation.layer.shadowOffset = CGSize(width: 0, height: 2)
        accountInformation.layer.masksToBounds = false
        accountInformation.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        self.accountInformation.separatorStyle = .none
        accountInformation.isScrollEnabled = false

    }
}


extension ProfileVC : UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        //        let sectionNumber = profileData.count
        //        return sectionNumber
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.section == 0{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as? ProfileDataCell
            
            let cellData = profileData[indexPath.section].1[indexPath.row]
            
            cell!.updateView(image: cellData.logo, labelName: cellData.name)
            cell!.selectionStyle = .none
            
            return cell!
            
        }
        else if indexPath.section == 1{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ProfileDataCell2
            
            
            let cellData = profileData2.1[indexPath.row]
            
            
            
            cell!.updateView(image: cellData.logo, labelName: cellData.name, switchControl: cellData.switchLogo)
            
            cell!.selectionStyle = .none
            return cell!
            
        }
        
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as? ProfileDataCell
            
            let cellData = profileData[1].1[indexPath.row]
            
            cell!.updateView(image: cellData.logo, labelName: cellData.name)
            cell!.selectionStyle = .none
            
            return cell!
            
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section ==  0{
            let headerTitle = profileData[section].0
            return headerTitle
            
        }
        else if section ==  2{
            let headerTitle = profileData[1].0
            return headerTitle
            
        }
        else {
            let headerTitle = profileData2.0
            return headerTitle
            
        }
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if let headerView = view as? UITableViewHeaderFooterView {
            headerView.textLabel?.textColor = .black
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cellData = profileData[0].1[1].button
        
        if indexPath.row == 0 {

                cellData.addGestureRecognizer(UIGestureRecognizer(target: self, action: #selector(changeControllers)))
                
                //self.navigationController?.pushViewController(updateProfile, animated: true)
            }
        }
    
    @objc func changeControllers(){
        let updateProfile = ManageProfileVC()
        self.navigationController?.pushViewController(updateProfile, animated: true)
    }
    
    
}



    
    
//        @IBAction func manageProfileButton() {
//
//            let vc = UIViewController()
//            //vc.view.backgroundColor = .yellow
//            navigationController?.pushViewController(vc, animated: true)
//        }
//

