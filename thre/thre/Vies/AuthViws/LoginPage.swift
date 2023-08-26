//
//  LoginPage.swift
//  thre
//
//  Created by الوليد خشيم on 10/02/1445 AH.
//

import SwiftUI

struct LoginPage: View {
    var body: some View {
        VStack{
    HStack{
        Text("Username").padding(.horizontal)
        Spacer()
    }
            HStack{
                
                TextField("Username", text: Gwt().$Token)
            }.padding(8).background(Color.gray.opacity(0.2)).padding(8)
            
            HStack{
                
                TextField("Password", text: Gwt().$password)
            }.padding(8).background(Color.gray.opacity(0.2)).padding(8)
            
            NavigationLink {
                SheckTheToken().navigationBarBackButtonHidden(true)
            } label: {
                Text("LogIn").foregroundColor(Color.black).padding(8).padding(.horizontal).background(Color.gray.opacity(0.3))
            }
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
