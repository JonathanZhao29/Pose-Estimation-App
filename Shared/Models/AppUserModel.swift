//
//  AppUserModel.swift
//  Pose Estimation App
//
//  Created by John Huang on 2/13/22.
//

import SwiftUI
import FirebaseAuth
import Firebase
/*
 Class that connects with Firebase for user data and authentication
 */

class AppUserModel: ObservableObject {
    
    let auth = Auth.auth()
    let db = Firestore.firestore()
    
    @Published var signedIn = false
    
    var isSignedIn: Bool {
        return auth.currentUser != nil
    }
    
    func signIn(email: String, password: String, onFail: @escaping ()->Void = {}, onSucess: @escaping ()->Void = {}){
        auth.signIn(withEmail: email, password: password){
            [weak self] result, error in
            guard result != nil, error == nil else {
                onFail()
                return
            }
            
            //Success
            DispatchQueue.main.async {
                onSucess()
                self?.signedIn = true
            }
        }
    }
    
    func signUp(data: Dictionary<String, String>, email: String, password: String, onFail: @escaping ()->Void = {}, onSucess: @escaping ()->Void = {}){
        auth.createUser(withEmail: email, password: password) {
            [weak self] result, error in
            guard result != nil, error == nil else {
                onFail()
                return
            }
            
            self!.db.collection("users").document(self!.auth.currentUser!.uid).setData(data){err in
                if let err = err {
                    print("Error writing document: \(err)")
                } else {
                    print("Document successfully written!")
                }
            }
            
            //Success
            DispatchQueue.main.async {
                onSucess()
                self?.signedIn = true
            }
        }
    }
    
    func signOut(){
        try? auth.signOut()
        
        self.signedIn = false
    }
}
