//
//  LoginPage.swift
//  thre
//
//  Created by الوليد خشيم on 10/02/1445 AH.
//

import SwiftUI
import FirebaseAuth

struct LoginPage: View {
    @State var Username: String = ""
    @State var password: String = ""
    @State var boolpage: Bool = false
    @State var texteror: Text = Text("")
    var body: some View {
        if boolpage == true {
            
            SheckTheToken() }
        else {
            VStack{
                Spacer()
        HStack{
            
            Image("pngtree-instagram-icon-instagram-logo-png-image_3584853").resizable().frame(width: 130,height: 130).padding(.bottom,70)
        }
                HStack{
                    
                    TextField("Username", text: $Username).frame(width: 360,height: 44).padding(8).background(Color.white).cornerRadius(8)
                }
                HStack{
                    
                    SecureField("password", text: $password).frame(width: 360,height: 44).padding(8).background(Color.white).cornerRadius(8).padding(8)
                }
                
                Button(action: {
                    foo(username: Username, Password: password)
                },
                 label: {
                    Text("Log in").frame(width: 340,height: 30).foregroundColor(Color.white).padding(8).padding(.horizontal).background(Color.blue).cornerRadius(35)
                }).padding(.bottom)
                
                HStack{texteror.foregroundColor(Color.red).frame(width: 350,height: 100).padding() }
                Spacer()
            }.background(Color.gray.gradient.opacity(0.3))
        }
    }
    func foo(username:String,Password:String){
        Auth.auth().createUser(withEmail: username, password: Password){ok,erorr
            in
            if erorr == nil {
                Gwt().Token = "token"
                boolpage = true
                print(" ok")
            }else
            {
                texteror = Text("Sorry, the password or email is incorrect")
                print("nit ok")
            }
            
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
