//
//  Detailed thkr.swift
//  MyApp
//
//  Created by M. AlQahtani on 5/5/20.
//  Copyright © 2020 M.AlQahtani. All rights reserved.
//

import SwiftUI

struct Detailed_thkr: View {
    var thker: String
    @Binding var counter: Int
    
    var body: some View {
        VStack {
            Text("اية الكرسي كاملة")
            Text("\(counter)")
                .onTapGesture {
                self.counter += 1
            }
        }}
}
