//
//  PageVC1.swift
//  ImmiCan
//
//  Created by Shubhdeep on 2023-02-06.
//

import Foundation
import UIKit

class tutorialHandler: UIViewController{

    @IBOutlet weak var chooseYourProvince: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
   
         
        
        chooseYourProvince?.layer.masksToBounds = false
        
        chooseYourProvince?.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        chooseYourProvince?.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        chooseYourProvince?.layer.shadowOpacity = 1
        chooseYourProvince?.layer.shadowRadius = 4
        chooseYourProvince?.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        chooseYourProvince?.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        chooseYourProvince?.layer.borderWidth = 0.5
        chooseYourProvince?.setTitle("Select Province", for: .normal)
        
        
        
        
    }
    
    @IBAction func selectProvinceTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ProvinceSelection") as! SelectProvincePicker
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func applySinButtonTapped(_ sender: UIButton) {
        if let url = URL(string: "https://www.canada.ca/en/employment-social-development/services/sin/apply.html") {
              UIApplication.shared.open(url)
          }
    }
    

    @IBAction func applyIDButtonTapped(_ sender: UIButton) {
        
        if let selectedProvince = UserDefaults.standard.object(forKey: "SelectedProvince") as? String {
            switch selectedProvince {
                
            case "Alberta" :
                if let url = URL(string: "https://www.alberta.ca/get-id-card.aspx#jumplinks-2") {
                    UIApplication.shared.open(url)
                }
                
            case "British Columbia" :
                if let url = URL(string: "https://www.icbc.com/driver-licensing/getting-licensed/Pages/Apply-for-a-BCID.aspx") {
                    UIApplication.shared.open(url)
                }
                
            case "Manitoba" :
                if let url = URL(string: "https://www.mpi.mb.ca/Pages/apply-for-id-card.aspx") {
                    UIApplication.shared.open(url)
                }
                
            case "New Brunswick" :
                if let url = URL(string: "https://www2.gnb.ca/content/gnb/en/services/services_renderer.12535.Photo_ID_Card.html") {
                    UIApplication.shared.open(url)
                }
                
            case "Newfoundland and Labrador" :
                if let url = URL(string: "https://www.gov.nl.ca/motorregistration/new-drivers/photo-identification-card/") {
                    UIApplication.shared.open(url)
                }
            case "Nova Scotia" :
                if let url = URL(string: "https://novascotia.ca/sns/paal/rmv/paal275.asp") {
                    UIApplication.shared.open(url)
                }
            case "Ontario" :
                if let url = URL(string: "https://www.ontario.ca/page/ontario-photo-card#section-1") {
                    UIApplication.shared.open(url)
                }
            case "Prince Edward Island" :
                if let url = URL(string: "https://www.princeedwardisland.ca/en/information/transportation-and-infrastructure/photographic-identification-card-voluntary-id") {
                    UIApplication.shared.open(url)
                }
            case "Quebec" :
                if let url = URL(string: "https://montreal.ca/en/how-to/get-acces-montreal-card#:~:text=You%20can%20purchase%20an%20Accès,children%20ages%2012%20and%20under.") {
                    UIApplication.shared.open(url)
                }
                
            case "Saskatchewan" :
                if let url = URL(string: "https://sgi.sk.ca/photo-id") {
                    UIApplication.shared.open(url)
                }
                
            case "Yukon" :
                if let url = URL(string: "https://yukon.ca/en/your-government/government-issued-identification/get-general-identification-card") {
                    UIApplication.shared.open(url)
                }
                
            default:
                print("No Province Selected")
            }
        }
        
    }
    
    @IBAction func applyDLButtonTapped(_ sender: UIButton) {
        
        if let selectedProvince = UserDefaults.standard.object(forKey: "SelectedProvince") as? String {
            switch selectedProvince {
                
            case "Alberta" :
                if let url = URL(string: "https://www.alberta.ca/get-drivers-licence.aspx") {
                    UIApplication.shared.open(url)
                }
                
            case "British Columbia" :
                if let url = URL(string: "https://www.icbc.com/driver-licensing/moving-bc/Pages/Default.aspx") {
                    UIApplication.shared.open(url)
                }
                
            case "Manitoba" :
                if let url = URL(string: "https://www.mpi.mb.ca/Pages/Licensing-ID.aspx?sct=Get%20a%20Licence") {
                    UIApplication.shared.open(url)
                }
                
            case "New Brunswick" :
                if let url = URL(string: "https://www2.gnb.ca/content/gnb/en/services/services_renderer.201491.Driver_s_Licences.html#:~:text=To%20apply%20for%20a%20new,cannot%20be%20renewed%20by%20mail.&text=The%20physical%20printing%20of%20Driver%27s,that%20uses%20advanced%20security%20features.") {
                    UIApplication.shared.open(url)
                }
                
            case "Newfoundland and Labrador" :
                if let url = URL(string: "https://www.gov.nl.ca/motorregistration/new-drivers/licence-application-process/#:~:text=To%20get%20a%20Newfoundland%20and,to%20safely%20operate%20a%20vehicle.") {
                    UIApplication.shared.open(url)
                }
            case "Nova Scotia" :
                if let url = URL(string: "https://novascotia.ca/driving-and-road-safety/") {
                    UIApplication.shared.open(url)
                }
            case "Ontario" :
                if let url = URL(string: "https://www.ontario.ca/page/drivers-licence") {
                    UIApplication.shared.open(url)
                }
            case "Prince Edward Island" :
                if let url = URL(string: "https://www.princeedwardisland.ca/en/information/transportation-and-infrastructure/getting-a-pei-drivers-license") {
                    UIApplication.shared.open(url)
                }
            case "Quebec" :
                if let url = URL(string: "https://saaq.gouv.qc.ca/en/drivers-licences") {
                    UIApplication.shared.open(url)
                }
                
            case "Saskatchewan" :
                if let url = URL(string: "https://sgi.sk.ca/photo-id") {
                    UIApplication.shared.open(url)
                }
                
            case "Yukon" :
                if let url = URL(string: "https://yukon.ca/en/driving-and-transportation/driver-licensing") {
                    UIApplication.shared.open(url)
                }
                
            default:
                print("No Province Selected")
            }
            
        }
    }
    
    @IBAction func showNearByBanksTapped(_ sender: UIButton) {
        let urlString = "https://www.google.com/maps/search/?api=1&query=banks+near+me"
           guard let url = URL(string: urlString) else { return }
           UIApplication.shared.open(url)
    }
    
    @IBAction func applyHealthCardTapped(_ sender: UIButton) {
    
        if let selectedProvince = UserDefaults.standard.object(forKey: "SelectedProvince") as? String {
            switch selectedProvince {
                
            case "Alberta" :
                if let url = URL(string: "https://ama.ab.ca/registries/personal/alberta-health-care-card#:~:text=What%20Is%20an%20Alberta%20Health,Hospital%20services") {
                    UIApplication.shared.open(url)
                }
                
            case "British Columbia" :
                if let url = URL(string: "https://alpha.gov.bc.ca/gov/content/health/health-drug-coverage/msp/bc-residents/eligibility-and-enrolment/how-to-enrol") {
                    UIApplication.shared.open(url)
                }
                
            case "Manitoba" :
                if let url = URL(string: "https://www.gov.mb.ca/health/mhsip/mbcard.html") {
                    UIApplication.shared.open(url)
                }
                
            case "New Brunswick" :
                if let url = URL(string: "https://www2.gnb.ca/content/gnb/en/departments/health/MedicarePrescriptionDrugPlan/content/medicare/ApplyingforaCard.html") {
                    UIApplication.shared.open(url)
                }
                
            case "Newfoundland and Labrador" :
                if let url = URL(string: "https://www.gov.nl.ca/hcs/mcp/") {
                    UIApplication.shared.open(url)
                }
            case "Nova Scotia" :
                if let url = URL(string: "https://novascotia.ca/dhw/msi/") {
                    UIApplication.shared.open(url)
                }
            case "Ontario" :
                if let url = URL(string: "https://ehealthontario.on.ca/en/health-care-professionals/one-id#:~:text=Individuals%20involved%20in%20delivering%20health,other%20digital%20heath%20solution%20providers.") {
                    UIApplication.shared.open(url)
                }
            case "Prince Edward Island" :
                if let url = URL(string: "https://www.princeedwardisland.ca/en/information/health-pei/pei-health-card") {
                    UIApplication.shared.open(url)
                }
            case "Quebec" :
                if let url = URL(string: "https://www.ramq.gouv.qc.ca/en/citizens/health-insurance/register") {
                    UIApplication.shared.open(url)
                }
                
            case "Saskatchewan" :
                if let url = URL(string: "https://www.ehealthsask.ca/residents/health-cards/Pages/Apply-for-a-Health-Card.aspx") {
                    UIApplication.shared.open(url)
                }
                
            case "Yukon" :
                if let url = URL(string: "https://yukon.ca/en/health-care-card#:~:text=To%20be%20eligible%20for%20the,waiver%20from%20Insured%20Health%20Services.") {
                    UIApplication.shared.open(url)
                }
                
            default:
                print("No Province Selected")
            }
            
        }
    }
}
    
    
