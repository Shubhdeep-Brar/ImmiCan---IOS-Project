//
//  ProfileDataProvider2.swift
//  makeMyTrip
//
//  Created by Saijal Arora  on 2022-12-05.
//

import UIKit

class ProfileDataProvider2 {
    
    static func provideProfileInformation2() -> (String , [ProfileInformation2]){
        
        lazy var SwitchControl1: UISwitch = {
            let SwitchControl = UISwitch()
            SwitchControl.isOn = true
            SwitchControl.setOn(true, animated: false)
            SwitchControl.isEnabled = true
            return SwitchControl
        }()
        
        lazy var SwitchControl2: UISwitch = {
            let SwitchControl = UISwitch()
            SwitchControl.isOn = false
            SwitchControl.isEnabled = true
            SwitchControl.setOn(true, animated: false)
            return SwitchControl
        }()
        
        var notifications : [ProfileInformation2] = []
        
        notifications.append(ProfileInformation2(logo: UIImage(named: "Notification")! ,name: "Notification", switchLogo: SwitchControl1))
        
        notifications.append(ProfileInformation2(logo: UIImage(named: "Notification2")! ,name: "Promothinal Notification", switchLogo: SwitchControl2))
        
        return ("Notifications", notifications)
        
    }
}
