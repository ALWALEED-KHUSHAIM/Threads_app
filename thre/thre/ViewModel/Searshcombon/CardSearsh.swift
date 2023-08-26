//
//  CardSearsh.swift
//  thre
//
//  Created by الوليد خشيم on 07/02/1445 AH.
//

import SwiftUI

struct CardSearsh: View {
    var body: some View {
        HStack{
            VStack{
                AsyncImage(url: URL(string: "https://source.unsplash.com/392x200/?[stars]%22")).frame(width: 50,height: 50).clipShape(Circle()).padding(.horizontal)
                Spacer()
            }
            VStack(alignment:  .leading){
                Text("ALwaleed Khushaim").bold()
                Text("wf_vip").foregroundColor(Color.gray)
                Spacer()
                Text("41.4k foloweres")
            }
            Spacer()
            Button {
                
            } label: {
                Text("Follow").foregroundColor(Color.black).frame(width: 90,height: 35).border(Color.gray.opacity(0.3)).padding(.trailing)
                
            }
                
            }.frame(width: 390 , height: 70).background()
        }
    }

struct CardSearsh_Previews: PreviewProvider {
    static var previews: some View {
        CardSearsh()
    }
}
