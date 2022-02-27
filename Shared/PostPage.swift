//
//  PostPage.swift
//  Pose Estimation App
//
//  Created by Jonathan Zhao on 2/27/22.
//

import SwiftUI

struct PostPage: View {
    //Background Colors
    let backgroundColor = Color("BackgroundColor")
    let backgroundColor2 = Color("BackgroundColor2")
    @State private var favButton:Bool = false
    @State private var vidTitle:String = "Dance Dance Revolution leading"
    @State private var vidDescription:String = "Lorem Ipsum Dimsum Hitdum Simtom ripcom sitcom "
    @State private var learnButton:Bool = false
    
    var body: some View {
        ZStack {
            //Background gradient
            //LinearGradient(gradient: Gradient(colors: [backgroundColor, backgroundColor2]), startPoint: .top, endPoint: .bottom)
                //.ignoresSafeArea()
            //Video of dance in background
            
            
            VStack {
                //Favorite Button
                HStack{
                    Spacer()
                    Button{
                        favButton.toggle()
                        print("Favorite Button Pressed")
                        if favButton == true{
                            //Add to favorites
                            print("Video added to Favorites")
                        }
                    } label:{
                        Image(systemName: favButton == true ? "star.fill" : "star")
                            .font(.largeTitle)
                    }
                    
                }
                Spacer(minLength: 100)
                //Title
                Text("\(vidTitle)")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                //Description
                Text("\(vidDescription)")
                    .padding()
                //Learn button
                Button{
                    learnButton.toggle()
                    print("Learn Button Pressed")
                    //Enter learn screen
                    
                    
                } label:{
                    Image(systemName: "arrowtriangle.right.circle")
                        .font(.largeTitle)
                    Text("LEARN")
                }
            }
            
        }
    }
}

struct PostPage_Previews: PreviewProvider {
    static var previews: some View {
        PostPage()
    }
}
