//
//  HomeView.swift
//  thre
//
//  Created by الوليد خشيم on 04/02/1445 AH.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
  VStack {
      
       ScrollView {
           Image("logoapp").resizable().frame(width: 60,height: 70)
           ForEach (0...10 , id: \.self){_ in
               NavigationLink(destination: CardRetwite() ){
                   CardRetwite()
               }.isDetailLink(true)
           }
       
                       
        }
  }.navigationBarTitleDisplayMode(.inline)
                .toolbar { // <2>
                    ToolbarItem(placement: .principal) { // <3>
                        HStack {
                           
                            
                        }.padding(.horizontal,20)
                    }
                }
            }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
