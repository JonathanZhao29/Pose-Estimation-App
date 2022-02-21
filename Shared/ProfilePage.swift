//
//  ProfilePage.swift
//  Pose Estimation App
//
//  Created by Jonathan Zhao on 2/20/22.
//

import SwiftUI

struct ProfilePage: View {
    var body: some View {
        VStack {
            HStack{
                //Edit Profile Button
                Spacer()
                Image(systemName: "pencil")
                    .padding()
            }
            //Profile Picture with circle crop
            Circle()
                .frame(width: 100, height: 100)
                //.fill(Color.red)
            //Username
            Text("**Jonathan Zhao**")
                .font(.title2)
            //User Description
            Text("Ice dancer turned CS major. Yep, that's me. You're probably wondering how I got here.")
            
            //Tabs for my posts/saved
            HStack {
                //My Posts
                Image(systemName: "photo.fill")
                    .padding()
                Spacer()
                //Saved Favorites
                Image(systemName: "star.fill")
                    .padding()
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
            
            //Area for video posts
            Spacer()
        }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
