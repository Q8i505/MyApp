//
//  CW1(Day2).swift
//  MyApp
//
//  Created by M. AlQahtani on 5/5/20.
//  Copyright © 2020 M.AlQahtani. All rights reserved.
//

import SwiftUI

struct CW1_Day2_: View {
     var athkaar = [
        "استغفرالله", "الحمدلله", "الله اكبر"
    ]
    @State var athkaarCounter = [0, 0, 0]
    var body: some View {
        
        VStack {
        athkaarRaw(theker: athkaar[0], thekerCounter: $athkaarCounter[0])
        Text("you have repeated theker for \(athkaarCounter[0])")
        athkaarRaw(theker: athkaar[1], thekerCounter: $athkaarCounter[1])
        Text("you have repeated theker for \(athkaarCounter[1])")
        athkaarRaw(theker: athkaar[2], thekerCounter: $athkaarCounter[2])
            Text("you have repeated theker for \(athkaarCounter[2])")
        }
        
        
    }
}

struct CW1_Day2__Previews: PreviewProvider {
    static var previews: some View {
        CW1_Day2_()
    }
}

struct athkaarRaw: View {
    var theker: String
    @Binding var thekerCounter: Int
    var body: some View {
        HStack {
            Text(theker)
                .font(.title)
            Button(action: {
                self.thekerCounter += 1
            }) {
                Text("\(thekerCounter)")
                    .foregroundColor(.white)
                    .font(.largeTitle)
            }
            .frame(width: 100, height: 100)
            .background(Color.green)
            .clipShape(Circle())
            .padding()
        }
    }
}
