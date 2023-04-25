//
//  AuthenticationViewModel.swift
//  ImmiCan
//
//  Created by Ramneek Kaur on 2023-04-21.
//

//import Foundation
//import FirebaseCore
//import FirebaseAuth
//import GoogleSignIn
//import GoogleSignInSwift
//
//enum AuthenicationState {
//    case unauthenticated
//    case authenticating
//    case authenticated
//}
//
//enum AuthentionflowError : Error {
//case tokenError(message : String)
//}
//
//extension AuthenticationViewModel {
//    func signWithGoogle() -> Bool{
//        guard let clientID = FirebaseApp.app()?.options.clientID else {
//            fatalError("No client ID found in firbase configuration")
//        }
//        
//        // Create Google Sign In configuration object.
//        let config = GIDConfiguration(clientID: clientID)
//        GIDSignIn.sharedInstance.configuration = config
//        
//        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
//              let window = windowScene.windows.first,
//              let rootViewController = window.rootViewController else {
//            print("There is no root view controller")
//            return false
//        }
//        
//        // Start the sign in flow!
//        let userAuthetication = try await GIDSignIn.sharedInstance.signIn(withPresenting: rootViewController)
//        let user = userAuthetication.user
//        guard let idToken = user.idToken else {
//            throw AuthentionError.tokenError(message: "Id token missing")
//            guard error == nil else {
//                // ...
//            }
//            let accessToken = user.accessToken
//            let credential = GoogleAuthProvider.credential(withIDToken: idToken.tokenString, accessToken: accessToken.tokenString)
//            
//            
//            let result = try await Auth.auth().signIn(with: credential)
//            let firebaseUser = result.user
//            print(" user \(firebaseUser.uid) signed in with email \(firebaseUser.email ?? "Unknow")")
//            return true
//        }
//            return false
//            
//        }
//    
//}
