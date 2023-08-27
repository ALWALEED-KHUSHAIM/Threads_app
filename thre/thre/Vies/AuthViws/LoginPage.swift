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
            Spacer()
    HStack{
        
        Image("pngtree-instagram-icon-instagram-logo-png-image_3584853").resizable().frame(width: 130,height: 130).padding(.bottom,70)
    }
            HStack{
                
                TextField("Username", text: Gwt().$Token).frame(width: 360,height: 44).padding(8).background(Color.white).cornerRadius(8)
            }
            HStack{
                
                TextField("password", text: Gwt().$password).frame(width: 360,height: 44).padding(8).background(Color.white).cornerRadius(8).padding(8)
            }
            
            NavigationLink {
                SheckTheToken().navigationBarBackButtonHidden(true)
            } label: {
                Text("Log in").frame(width: 340,height: 30).foregroundColor(Color.white).padding(8).padding(.horizontal).background(Color.blue).cornerRadius(35)
            }
            Spacer()
        }.background(Color.gray.gradient.opacity(0.4))
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
