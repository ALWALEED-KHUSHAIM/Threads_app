//
//  SearshbarComb.swift
//  thre
//
//  Created by الوليد خشيم on 07/02/1445 AH.
//

import SwiftUI

struct SearshbarComb: View {
    @State var searshtext: String = ""
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            TextField("searsh", text: $searshtext)
        }.padding(8).background(Color.gray.opacity(0.2)).cornerRadius(16).padding(8)
    }
}

struct SearshbarComb_Previews: PreviewProvider {
    static var previews: some View {
        SearshbarComb()
    }
}
