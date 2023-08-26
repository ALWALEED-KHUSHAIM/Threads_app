//
//  CardNewPost.swift
//  thre
//
//  Created by الوليد خشيم on 07/02/1445 AH.
//

import SwiftUI

struct CardNewPost: View {
    @State var textedetorControler: String = ""
    var body: some View {
        HStack{
            VStack{
                AsyncImage(url: URL(string: "https://source.unsplash.com/392x200/?[stars]%22")).frame(width: 50,height: 50).clipShape(Circle()).padding(.horizontal)
                Spacer()
                Rectangle().fill(.gray.opacity(0.5)).frame(width: 1)
            }
            
            VStack(alignment:  .leading){
                Text("wf_vip").bold()
                
                    TextEditor(text: $textedetorControler).frame(width: 300,height: 70)
                    Button {
                        
                    } label: {
                        Image(systemName: "swift").foregroundColor(Color.black)
                    }
                
                Spacer()
            }
            Spacer()
           
        
                
        }.frame(width: 390 , height: 160).background()
    }
}

struct CardNewPost_Previews: PreviewProvider {
    static var previews: some View {
        CardNewPost()
    }
}
