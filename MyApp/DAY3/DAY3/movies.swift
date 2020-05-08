//
//  movies.swift
//  DAY3
//
//  Created by M. AlQahtani on 5/8/20.
//  Copyright © 2020 M.AlQahtani. All rights reserved.
//

import SwiftUI

struct movies: View {
    
    var movieName: String
    var cast: String
    var body: some View {
        ZStack{
            Image(movieName)
            .resizable()
            .scaledToFit()
                .edgesIgnoringSafeArea(.all)
                .blur(radius: 40)
            Color
            .black
                .edgesIgnoringSafeArea(.all)
                .opacity(0.4)
            
            VStack {
                
                Image(movieName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                    .clipShape(Circle())
                Text(movieName)
                    .foregroundColor(.white)
                    .bold()
                    .font(.largeTitle)
                    .padding()
                Text(cast)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            }
            
            
            
            
        }
    }
}
