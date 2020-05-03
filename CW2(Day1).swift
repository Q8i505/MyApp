//
//  CW2(Day1).swift
//  MyApp
//
//  Created by M. AlQahtani on 5/3/20.
//  Copyright © 2020 M.AlQahtani. All rights reserved.
//

import SwiftUI

struct CW2_Day1_: View {
    @State var pageNumber = ""
    var body: some View {
        ZStack { BG()
            
            VStack {  Text("page\(pageNumber)")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.white)
                TextField("رقم الصفحه", text: $pageNumber)
                .keyboardType(.numberPad)
            .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.trailing)
                .frame(height: 90)
            }
            
    }
        .edgesIgnoringSafeArea(.all)
        
    }}

struct CW2_Day1__Previews: PreviewProvider {
    static var previews: some View {
        CW2_Day1_()
    }
}
