//
//  Movies.swift
//  MyApp
//
//  Created by M. AlQahtani on 5/5/20.
//  Copyright © 2020 M.AlQahtani. All rights reserved.
//

import SwiftUI

struct Movies: View {
    var movieName: String
    var starname: String

    var body: some View {
        
        ZStack {
            Image(movieName)
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .blur(radius: 10)
            VStack {
            Image(movieName)
            .clipShape(Circle())
                .padding(Edge.Set(rawValue: 10), 5)
                .background(Color.white)
            .clipShape(Circle())
                Text(movieName)
                .foregroundColor(.white)
                .font(.largeTitle)
                .bold()
                    .offset(y: -35)
                Text(starname)
                    .foregroundColor(.white)
                    .font(.callout)
                                .offset(y: -35)

            
            
            
            } .offset(y: -100)


        }
    }
}

