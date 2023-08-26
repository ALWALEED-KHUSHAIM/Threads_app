//
//  SershView.swift
//  thre
//
//  Created by الوليد خشيم on 04/02/1445 AH.
//

import SwiftUI

struct SershView: View {
   
    var body: some View {
        NavigationView{
        VStack{
            
           
            SearshbarComb()
            
            ScrollView(){
                ForEach(0...6,id: \.self){_ in
                    CardSearsh()
                        .padding(.top)
                    Divider()
                    
                   
                }
            }.padding(.top)
        }.navigationBarTitleDisplayMode(.inline)
            .toolbar { // <2>
                ToolbarItem(placement: .principal) { // <3>
                    HStack {
                        Text("Searsh").font(.title).bold()
                        Spacer()
                        
                    }.padding(.bottom)
                }
            }
        }
    }
}

struct SershView_Previews: PreviewProvider {
    static var previews: some View {
        SershView()
    }
}
