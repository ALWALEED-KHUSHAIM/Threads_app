//
//  sineup.swift
//  thre
//
//  Created by الوليد خشيم on 12/02/1445 AH.
//

import SwiftUI
import FirebaseAuth
struct sineup: View {
    @State var Username: String = ""
    @State var password: String = ""
    @State var boolpage: Bool = false
    @State var texteror: Text = Text("")
    var body: some View {
        if boolpage == true {
            
            LoginPage().navigationBarBackButtonHidden(true) }
        else {
            VStack{
                Spacer()
        HStack{
            
            Image("pngtree-instagram-icon-instagram-logo-png-image_3584853").resizable().frame(width: 130,height: 130).padding(.bottom,70)
        }
                Text("Create User").font(.title).padding()
                HStack{
                    
                    TextField("Username", text: $Username).frame(width: 360,height: 44).padding(8).background(Color.white).cornerRadius(8)
                }
                HStack{
                    
                    SecureField("password", text: $password).frame(width: 360,height: 44).padding(8).background(Color.white).cornerRadius(8).padding(8)
                }
                
                Button(action: {
                    createUser(username: Username, Password: password)
                },
                 label: {
                    Text("Create User").frame(width: 340,height: 30).foregroundColor(Color.white).padding(8).padding(.horizontal).background(Color.blue).cornerRadius(35)
                }).padding(.bottom)
                
                HStack{texteror.foregroundColor(Color.red).frame(width: 350,height: 100).padding() }
                Spacer()
            }.background(Color.gray.gradient.opacity(0.3))
        }
    }
    func createUser(username:String,Password:String){
        Auth.auth().createUser(withEmail: username, password: Password){ok,erorr
            in
            if erorr == nil {
                
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

struct sineup_Previews: PreviewProvider {
    static var previews: some View {
        sineup()
    }
}
