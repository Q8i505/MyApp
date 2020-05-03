//
//  CW3(Day3).swift
//  MyApp
//
//  Created by M. AlQahtani on 5/3/20.
//  Copyright © 2020 M.AlQahtani. All rights reserved.
//

import SwiftUI

struct CW3_Day3_: View {
   @State var thker = athkar.randomElement()!
   @State var counter = "0"
    var body: some View {
        ZStack {
            BG()
            VStack {
            Text(thker).modifier(thkerModifier())
                
                
                
        Text(counter).modifier(counterModifier())
                   
                
                
                
                
            }
           }
    .onTapGesture {
    self.counter = String(Int(self.counter)! + 1)
                                       }
                                     
    .onLongPressGesture {
self.thker = athkar.randomElement()!
    self.counter = "0"
            }
        .edgesIgnoringSafeArea(.all)
        }
}

struct thkerModifier: ViewModifier{
    
    func body(content: Content) -> some View {
        content
          .padding()
        .foregroundColor(.white)
        .multilineTextAlignment(.center)
        
    }
}

struct counterModifier: ViewModifier{
    
    func body(content: Content) -> some View {
        content
            .font(.custom("Al Tarikh", size: 40))
            .padding(.horizontal, 50)
            .padding(.vertical, 10)
            .padding(.bottom, 0)
            .background(Color.init( #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
        .clipShape(Capsule())
            .multilineTextAlignment(.center)
        .foregroundColor(.white)
        
    }
}

struct CW3_Day3__Previews: PreviewProvider {
    static var previews: some View {
        CW3_Day3_()
    }
}
