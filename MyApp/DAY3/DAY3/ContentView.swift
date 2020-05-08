//
//  ContentView.swift
//  DAY3
//
//  Created by M. AlQahtani on 5/8/20.
//  Copyright © 2020 M.AlQahtani. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var movieName: [String] = ["TAKEN", "SAW", "The Invisible Man"]
    var cast: [[String]] = [["Neeson", "others"],["Bell", "others"],["N/A"]]
    var body: some View {
    
        NavigationView{
            List {
                NavigationLink(destination: movies(movieName: movieName[0], cast: cast[0].joined(separator: ", "))) {movierow(movieName: movieName[0])}
                NavigationLink(destination: movies(movieName: movieName[1], cast: cast[1].joined(separator: ", "))) {movierow(movieName: movieName[1])}
                NavigationLink(destination: movies(movieName: movieName[2], cast: cast[2].joined(separator: ", "))) {movierow(movieName: movieName[2])}
            } .navigationBarTitle("Movies")
            
        }.accentColor(.white)
        
    }}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct movierow: View {
    var movieName: String
    var body: some View {
        HStack {
            
            Image(movieName)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .clipShape(Circle())
            Text(movieName)
                .bold()
                .font(.title)
            
        } .padding(.horizontal) .padding(.vertical, 5)
    }
}
