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
            NavigationLink(destination: ProfilePage()){
                Text("Profile Page")
            }
                .navigationTitle("Navigation")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
