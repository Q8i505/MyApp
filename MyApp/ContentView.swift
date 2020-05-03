//
//  ContentView.swift
//  MyApp
//
//  Created by M. AlQahtani on 5/1/20.
//  Copyright © 2020 M.AlQahtani. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var athkar = ["استغفرالله", "الحمدلله", "الله اكبر"]
    @State var thker = "الحمدلله"
    var body: some View {
       
        ZStack {

        Image("BACKGROUND")
            .resizable()
            Text(thker)
            .font(.largeTitle)
                .onTapGesture {
                    self.thker = self.athkar.randomElement()!
            }
            
            
        VStack {
            Image("Header")
            .resizable()
                .aspectRatio(contentMode: .fit)
                Spacer()
          
            Image("Mosque")
            .resizable()
                .aspectRatio(contentMode: .fit)
            
        
        }
    }
        .edgesIgnoringSafeArea(.all)
}}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
