//
//  ProfileDataProvider.swift
//  makeMyTrip
//
//  Created by Saijal Arora  on 2022-12-03.
//

import UIKit

class ProfileDataProvider {
    
    
    
    static func provideProfileInformation() -> [(String , [ProfileInformation])]{
        
        var myAccount : [ProfileInformation] = []
        var more : [ProfileInformation] = []
        
        lazy var slideButton : UIButton = {
            var button = UIButton()
            button.setImage(UIImage(named: "button"), for: .normal)
            return button
        }()

        
        
        
        myAccount.append(ProfileInformation(logo: UIImage(named: "ManageProfile")!, name: "Manage Profile", button: slideButton))
        
        myAccount.append(ProfileInformation(logo: UIImage(named: "Payment")!, name: "Payment", button: slideButton ))
    
        
        more.append(ProfileInformation(logo: UIImage(named: "Friends")!, name: "Friends", button: slideButton))
        
        more.append(ProfileInformation(logo: UIImage(named: "logout")!, name: "Logout", button: slideButton))
        
        
        return [("My Account", myAccount), ("More", more)]
    }
    

}




