//
//  NewPost.swift
//  thre
//
//  Created by الوليد خشيم on 04/02/1445 AH.
//

import SwiftUI

struct NewPost: View {
    var body: some View {
       
            VStack{
                HStack{
                    NavigationLink(destination:MainView())
                    {
                        Text("Cancel").frame(width: 54,height: 20)
                                           
                    }.padding(.leading).padding(.trailing,78)
                    

                    Text("New threds")
                    Spacer()
                }
                CardNewPost()
                Spacer()
            }
        }
    }


struct NewPost_Previews: PreviewProvider {
    static var previews: some View {
        NewPost()
    }
}
