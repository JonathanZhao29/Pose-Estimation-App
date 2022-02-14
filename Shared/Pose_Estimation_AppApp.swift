//
//  Pose_Estimation_AppApp.swift
//  Shared
//
//  Created by Jonathan Zhao on 1/30/22.
//

import SwiftUI
import Firebase

@main
struct Pose_Estimation_AppApp: App {
    
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            let userModel = AppUserModel()
            ContentView()
                .environmentObject(userModel)
        }
    }
}

//class AppDelegate: NSObject, UIApplicationDelegate {
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//
//        FirebaseApp.configure()
//
//        return true
//    }
//}
