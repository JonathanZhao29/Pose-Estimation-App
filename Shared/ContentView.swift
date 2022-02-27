//
//  ContentView.swift
//  Shared
//
//  Created by Jonathan Zhao on 1/30/22.
//
import SwiftUI
struct ContentView: View {
    var body: some View{
        NavigationView{
            
            //Add Your Views here with Navigation Link
            //Don't write another .navigationTitle
            Form{
            
                
                
                NavigationLink(destination: ProfilePage()){
                    Text("Profile Page")
                }
                
                //Can pass video information in
                NavigationLink(destination: PostPage()){
                    Text("Post Page")
                    
            }
            
            }
                .navigationTitle("Pose Estimation App")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
