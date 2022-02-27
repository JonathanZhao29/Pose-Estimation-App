//
//  ProfilePage.swift
//  Pose Estimation App
//
//  Created by Jonathan Zhao on 2/20/22.
//

import SwiftUI

struct ProfilePage: View {
    
    //For connection with database
    //Data will change based on user info
    var profileName:String = "Jonathan Zhao"
    var profileDescription:String = "Ice dancer turned CS major. Yep, that's me. You're probably wondering how I got here."
    
    //Background Colors
    let backgroundColor = Color("BackgroundColor")
    let backgroundColor2 = Color("BackgroundColor2")
    
    
    //For changing tabs
    @State var tab:Bool = true
    @State var myPostsImageName:String = "photo.fill"
    @State var favoritesImageName:String = "star"
    //Current tab debug variable
    @State var currentTab = "myPosts"
    
    var body: some View {
        ZStack {
            //Background gradient
            //LinearGradient(gradient: Gradient(colors: [backgroundColor, backgroundColor2]), startPoint: .top, endPoint: .bottom)
                //.ignoresSafeArea()
            
            VStack {
                HStack{
                    //Edit Profile Button
                    Spacer()
                    Button{
                        print("Edit Profile Button Pressed")
                    } label:{
                    Image(systemName: "pencil")
                        .padding()
                    }
                }
                //Profile Picture with circle crop
                Circle()
                    .frame(width: 100, height: 100)
                    //.fill(Color.red)
                //Username
                Text("**\(profileName)**")
                    .font(.title2)
                //User Description
                Text(profileDescription)
                    .padding()
                
                //Tabs for my posts/saved
                HStack {
                    //My Posts
                    
                    Button{
                        if tab != true{
                                tab.toggle()
                                currentTab = "My Posts"
                        }
                        myPostsImageName = tab == true ? "photo.fill" : "photo"
                        favoritesImageName = tab == true ? "star" : "star.fill"
                        print("My Posts Tab Pressed")
                        print("Current tab:\(currentTab)")
                    } label:{
                    Image(systemName: myPostsImageName)
                        .padding()
                    }
                    Spacer()
                    //Saved Favorites
                    Button{
                        if tab != false{
                                tab.toggle()
                                currentTab = "Favorites"
                                
                        }
                        favoritesImageName = tab == true ? "star" : "star.fill"
                        myPostsImageName = tab == true ? "photo.fill" : "photo"
                        
                        print("Favorites Tab Pressed")
                        print("Current tab:\(currentTab)")
                    } label:{
                    Image(systemName: favoritesImageName)
                        .padding()
                    }
                }
                //Video Posts, changes with tab
                VStack{
                    Image(systemName: "video.fill")
                        .padding()
                    Image(systemName: "video.fill")
                        .padding()
                    Image(systemName: "video.fill")
                        .padding()
                    Image(systemName: "video.fill")
                        .padding()
                }
                
                Spacer()
            }
        }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
