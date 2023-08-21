//
//  HomeView.swift
//  thre
//
//  Created by الوليد خشيم on 04/02/1445 AH.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
  VStack {
      
       ScrollView {
           Image("logoapp").resizable().frame(width: 60,height: 60).clipShape(Circle())
           CardRetwite()
           CardRetwite()
           CardRetwite()
           CardRetwite()
           CardRetwite()
           CardRetwite()
           CardRetwite()
           CardRetwite()
                       Button {
               Gwt().Token = ""
           } label: {
               Text("sineout")
           }
        }
  }.background(Color.black.opacity(0.0))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
