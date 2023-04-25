//
//  jobPageInitialViewController.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-03-17.
//

import Foundation
import UIKit


class jobPageInitialViewController: UIViewController {
    
    let data = JobDataProvider.makeJobMockData()
    let specifiedData = DetailedJobDiscriptionDataProvider.makeJobMockData()
    
    lazy var jobTableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(JobCell.self, forCellReuseIdentifier: "cell")
        tableView.register(IntroductoryCell.self, forCellReuseIdentifier: "IntroductoryCell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .white
        
        tableView.sectionHeaderTopPadding = 30
        return tableView
    }()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
      //  jobTableView.delegate = self
       // jobTableView.dataSource = self
        
        view.addSubview(jobTableView)
        jobTableView.sectionHeaderHeight = UITableView.automaticDimension
        NSLayoutConstraint.activate([
            jobTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            jobTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            jobTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: -50),
            jobTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            
        ])
        self.jobTableView.separatorColor = UIColor.clear
    }

        
}

extension jobPageInitialViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0{
            return 1
        }
        else{
            let sectionData = data.1
            return sectionData.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.section == 0{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "IntroductoryCell", for: indexPath) as? IntroductoryCell
            
            cell?.contentView.backgroundColor = .lightGray
            cell?.layer.masksToBounds = true
            
            cell?.layer.cornerRadius = 8
            cell?.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
            cell?.layer.shadowOpacity = 1
            cell?.layer.shadowRadius = 4
            
            
            return cell!
            
        }
        else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? JobCell
            
            
            let cellData = data.1[indexPath.row]
            
            cell!.updateView(companyLogo: cellData.companyLogo, companyName: cellData.companyName, jobTitle: cellData.jobTitle, employmentType: cellData.employmentType, employmentType2: cellData.employmentType2, location: cellData.location, postingDuration: cellData.postingDuration)
            
            
            
            return cell!
            
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        // return "test"}
        let title = data.0
        if section == 1{
            return title
        }
        else {
            return nil
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section != 0{
            
            let mockData = ((JobDataProvider.makeJobMockData()).1)[indexPath.row]
            let mockData2 = (DetailedJobDiscriptionDataProvider.makeJobMockData())[indexPath.row]
            
            
            let singleJob = SingleJobPage(companyLogo: mockData.companyLogo,companyName: mockData.companyName, jobTitle: mockData.jobTitle, employmentType: mockData.employmentType, employmentType2: mockData.employmentType2, salary: mockData2.salary, applicationNumber: mockData2.applicationNumber, expiryDate: mockData2.expiryDate, discription: mockData2.discription, responsibility: mockData2.responsibility)
            
            
            //  var detailedView1 = detailedJobPage()
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "detailedJobPage") as! detailedJobPageViewController
            vc.details = singleJob
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
}
   


// cell?.backgroundColor = UIColor(named: "#E5E5E5")
//            let cellData = profileData[indexPath.section].1[indexPath.row]
//
//            cell!.updateView(image: cellData.logo, labelName: cellData.name)
//
