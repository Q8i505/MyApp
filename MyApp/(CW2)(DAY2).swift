//
//  (CW2)(DAY2).swift
//  MyApp
//
//  Created by M. AlQahtani on 5/5/20.
//  Copyright © 2020 M.AlQahtani. All rights reserved.
//

import SwiftUI

struct _CW2__DAY2_: View {
    var movieName = ""
    var starname = ""
    var body: some View {
        NavigationView {
            List {
                movierow(movieName: "TAKEN", starname: "Neeson, and others")
                movierow(movieName: "SAW", starname: "Bell, and others")
                movierow(movieName: "The Invisible Man", starname: "Elisabeth Moss, and others")
                
                
            }
            .navigationBarTitle("Movies")
            
            
            
            
            
            
        }
        
        
        
        
        
        
    }
}

struct _CW2__DAY2__Previews: PreviewProvider {
    static var previews: some View {
        _CW2__DAY2_()
    }
}

struct movierow: View {
    var movieName: String
    var starname: String
    var body: some View {
        NavigationLink(destination: Movies(movieName: movieName, starname: starname)) {
            HStack(alignment: .center) {
                Image(movieName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .clipShape(Circle())
                VStack(alignment: .leading){
                    Text(movieName)
                        .font(.largeTitle)
                    Text(starname)
                }
            }
            
            
        }
    }
}
