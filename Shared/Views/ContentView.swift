//
//  ContentView.swift
//  Shared
//
//  Created by Jonathan Zhao on 1/30/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userModel: AppUserModel
    
    var body: some View {
        NavigationView {
            if userModel.isSignedIn {
                VStack {
                    Text("You are signed in")
                    Button(action: {
                        userModel.signOut()
                    }, label: {
                        Text("Sign Out")
                            .foregroundColor(Color.blue)
                    })
                }
            } else {
                SignInView()
            }
        }
        .onAppear {
            userModel.signedIn = userModel.isSignedIn
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
