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
                Text("_______").foregroundColor(.black.opacity(0.1))
                Text(" ")
            }.frame(height: 500).background()
            
            
            VStack{
                HStack{
                    Text("ALWALEED-KHUSHAIM").foregroundColor(Color.black)
                        .bold()
                    
                        .padding(2)
                    Spacer()
                    Text("4h")
                        .font(.callout)
                        .foregroundColor(Color.gray)
                    Image(systemName: "ellipsis").foregroundColor(Color.black)
                    
                }
                
                Text("""
Information technology (IT) is the use of computer systems or devices to access information. Information technology is responsible for such a large portion of our workforce, business operations and personal access to information that it comprises much of our daily activities.
""").foregroundColor(Color.black).padding(.bottom,20)
                
                
                AsyncImage(url: URL(string: "https://source.unsplash.com/392x200/?[stars]%22"))
                    .frame(width: 350, height: 200)
                    .cornerRadius(10).padding(.trailing).padding(.trailing)
                
                HStack{
                    Image(systemName: "heart").foregroundColor(Color.black)
                    Image(systemName: "bubble.middle.bottom").foregroundColor(Color.black)
                    Image(systemName: "arrow.2.squarepath").foregroundColor(Color.black)
                    Image(systemName: "paperplane").foregroundColor(Color.black)
                }.padding(.top,3)
                    .padding(.trailing,250)
                Text("___________________________________").foregroundColor(.black.opacity(0.1))
            }.frame(width: 320,height: 500).background().padding(.trailing).padding(.trailing)
        }
    }
}

struct CardRetwite_Previews: PreviewProvider {
    static var previews: some View {
        CardRetwite()
    }
}
