//
//  AppDelegate.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2022-12-23.
//

import UIKit
import FirebaseCore
import FacebookCore
import Firebase
import FBSDKLoginKit
import GoogleSignIn


@main
class AppDelegate: UIResponder, UIApplicationDelegate{
    
    var windows: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        
        ApplicationDelegate.shared.application(
            application,
            didFinishLaunchingWithOptions: launchOptions
            
            
        )
        return true
        
        GIDSignIn.sharedInstance.restorePreviousSignIn { user, error in
            if error != nil || user == nil {
              // Show the app's signed-out state.
            } else {
              // Show the app's signed-in state.
            }
          }
          return true
        }
        
        
    
    func application(
        _ app: UIApplication,
        open url: URL,
        options: [UIApplication.OpenURLOptionsKey : Any] = [:]
    ) -> Bool {
        
        if GIDSignIn.sharedInstance.handle(url) {
            return true
        }
        
        let facebookHandled = ApplicationDelegate.shared.application(app, open: url, options: options)
            if facebookHandled {
                return true
            }
            
        
        // Handle other URL schemes here if needed
        return false
    }
//        if url.scheme?.hasPrefix("fb") == true {
//            return ApplicationDelegate.shared.application(
//                app,
//                open: url,
//                sourceApplication: options[UIApplication.OpenURLOptionsKey.sourceApplication] as? String,
//                annotation: options[UIApplication.OpenURLOptionsKey.annotation])
//
//        }
//        if url.scheme?.hasPrefix("com.googleusercontent.apps") == true {
//            //return GIDSignIn.sharedInstance.handle(url)
//        }
        //        else {
        //            return false
        //        }
        //
        //    }
        
        
        // MARK: UISceneSession Lifecycle
        
    
    
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//            ApplicationDelegate.shared.application(application, didFinishLaunchingWithOptions: launchOptions)
//            GIDSignIn.sharedInstance.restorePreviousSignIn { user, error in
//                if error == nil && user != nil {
//                    // User already signed in with Google.
//                    // Proceed to your app's main screen.
//                } else {
//                    // User not signed in or error occurred.
//                    // Show sign-in button or any other UI element.
//                }
//            }
//            return true
//        }
    
    
    
        func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
            // Called when a new scene session is being created.
            // Use this method to select a configuration to create the new scene with.
            return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
        }
        
        func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
            // Called when the user discards a scene session.
            // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
            // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
        }
        
        
        
        
        
    }
    
    

    

