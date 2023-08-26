//
//  bhhh.swift
//  thre
//
//  Created by الوليد خشيم on 10/02/1445 AH.
//

import SwiftUI

struct bhhh: View {
    var body: some View {
        NavigationView { // <1>
            ScrollView{
                Text("Hello, SwiftUI!")
            }
            .navigationBarTitleDisplayMode(.large)
                .toolbar { // <2>
                    ToolbarItem(placement: .principal) { // <3>
                        VStack {
                            Text("Title").font(.headline)
                            
                        }
                    }
                }
        }
    }
}

struct bhhh_Previews: PreviewProvider {
    static var previews: some View {
        bhhh()
    }
}
