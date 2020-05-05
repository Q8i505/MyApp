//
//  BiindingEx.swift
//  MyApp
//
//  Created by M. AlQahtani on 5/5/20.
//  Copyright © 2020 M.AlQahtani. All rights reserved.
//

import SwiftUI

struct BiindingEx: View {
    var thekr = "اية الكرسي"
    @State var counter: Int = 0
    var body: some View {
        NavigationView {
            
            List {
                NavigationLink(destination: Detailed_thkr(thker: thekr, counter: $counter)) {
                    
                    VStack {
                    Text(thekr)
                        Text("\(counter)")
                    }
                }
                Text("سورة الفلق")
                Text("سورة الاخلاص")
            }
        .navigationBarTitle("اذكاري")
        }
        

    }}

struct BiindingEx_Previews: PreviewProvider {
    static var previews: some View {
        BiindingEx()
    }
}
