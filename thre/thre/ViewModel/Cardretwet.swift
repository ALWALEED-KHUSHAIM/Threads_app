//
//  Cardretwet.swift
//  thre
//
//  Created by الوليد خشيم on 05/02/1445 AH.
//



import SwiftUI

struct CardRetwite: View {
    
    var body: some View {
        HStack{
            Spacer()
            VStack{
                
                AsyncImage(url: URL(string: "https://source.unsplash.com/392x200/?[stars]%22")).frame(width: 50,height: 50).clipShape(Circle()).padding(.leading).padding(.top)
                Spacer()
            }.frame(height: 500).background()
            
            
            VStack{
                HStack{
                    Text("ALWALEED-KHUSHAIM")
                        .bold()
                    
                        .padding(2)
                    Spacer()
                    Text("4h")
                        .font(.callout)
                        .foregroundColor(Color.gray)
                    Image(systemName: "ellipsis")
                    
                }
                
                Text("""
Information technology (IT) is the use of computer systems or devices to access information. Information technology is responsible for such a large portion of our workforce, business operations and personal access to information that it comprises much of our daily activities.
""").padding(.bottom,20)
                
                
                AsyncImage(url: URL(string: "https://source.unsplash.com/392x200/?[stars]%22"))
                    .frame(width: 350, height: 200)
                    .cornerRadius(10).padding(.trailing).padding(.trailing)
                
                HStack{
                    Image(systemName: "heart")
                    Image(systemName: "bubble.middle.bottom")
                    Image(systemName: "arrow.2.squarepath")
                    Image(systemName: "paperplane")
                }.padding(.top,3)
                    .padding(.trailing,250)
                
            }.frame(width: 320,height: 500).background().padding(.trailing).padding(.trailing)
        }
    }
}

struct CardRetwite_Previews: PreviewProvider {
    static var previews: some View {
        CardRetwite()
    }
}
