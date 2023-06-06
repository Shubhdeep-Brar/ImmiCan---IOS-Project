//
//  jobDataProvider.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-03-17.
//

import Foundation
import UIKit

class JobDataProvider {
    
    static func makeJobMockData() -> (String,[JobPosting]) {
        
        var jobSection: [JobPosting] = []
        
        jobSection.append(JobPosting(companyLogo: UIImage(named: "companyLogo1"),companyName: "AirBnb", jobTitle: "Quality Assurance Manager", employmentType: "Full - Time", employmentType2: "Part - Time", location: "Burnaby", postingDuration: "20 hours ago"))
        
        jobSection.append(JobPosting(companyLogo: UIImage(named: "companyLogo1"), companyName: "Tim Hortons", jobTitle: "Food Service Supervisor", employmentType: "Full - Time", employmentType2: "Permanenet", location: "Vancouver", postingDuration: "3 days ago"))
        
        jobSection.append(JobPosting(companyLogo: UIImage(named: "companyLogo1"),companyName: "Starbucks", jobTitle: "Barista", employmentType: "Casual", employmentType2: "Part Time", location: "Coquitlam", postingDuration: "16 hours ago"))
        
        jobSection.append(JobPosting(companyLogo: UIImage(named: "companyLogo1"), companyName: "Wellness Pharmacy", jobTitle: "Pharmacy Assistant", employmentType: "Contract", employmentType2: "Full - Time", location: "Langley", postingDuration: "4 days ago"))
        
        jobSection.append(JobPosting(companyLogo: UIImage(named: "companyLogo1"), companyName: "True North Management", jobTitle: "Call Centre Specialist", employmentType: "Full - Time", employmentType2: "Permanent", location: "Surrey", postingDuration: "3 hours ago"))
        
        jobSection.append(JobPosting(companyLogo: UIImage(named: "companyLogo1"),companyName: "Chachis", jobTitle: "Team member", employmentType: "Part Time", employmentType2: "Casual", location: "Burnaby/Vancouver", postingDuration: "month ago"))
        
        jobSection.append(JobPosting(companyLogo: UIImage(named: "companyLogo1"),companyName: "Gap Inc.", jobTitle: "Sales Represnetative", employmentType: "Part-Time", employmentType2: "Flexible", location: "Richmond", postingDuration: "week ago"))
        
        jobSection.append(JobPosting(companyLogo: UIImage(named: "companyLogo1"), companyName: "KFC", jobTitle: "Food Service Supervisor", employmentType: "Full-Time", employmentType2: "Permanent", location: "Coquitlam", postingDuration: "2 days ago"))
        
       return ("Popular Jobs", jobSection)
        
    }
    
}
