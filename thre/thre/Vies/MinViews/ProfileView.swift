//
//  ProfileView.swift
//  thre
//
//  Created by الوليد خشيم on 04/02/1445 AH.
//

import SwiftUI

struct ProfileView: View {
    @State var page: Text = Text("you havent posted any Threads yet.")
    var body: some View {
        NavigationView{
            VStack{
               
                HStack{
                    VStack(alignment: .leading){
                        Text( " A").font(.title).bold()
                            .padding(.vertical, 8)
                        
                        Text( " wf_vip")
                    }
                    Spacer()
                    AsyncImage(url: URL(string: "https://source.unsplash.com/392x200/?[stars]%22")).frame(width: 75,height: 75).clipShape(Circle())
                }.padding(.horizontal)
                HStack{
                    Text( " 23 followers").foregroundColor(Color.gray)
                    Spacer()
                }.padding(.horizontal)
                HStack{
                    Button {
                        
                    } label: {
                        Text( " Edit profile").frame(width: 175,height: 30).border(Color.gray.opacity(0.4)).foregroundColor(Color.black)
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Text( " Shere profile").frame(width: 175,height: 30).border(Color.gray.opacity(0.4)).foregroundColor(Color.black)
                    }
                }.padding()
                HStack{
                    Button {
                        page = Text("you havent posted any Threads yet.")
                    } label: {
                        Text( " Threads").frame(width: 110,height: 30).foregroundColor(Color.black)
                        
                    }
                    Button {
                        page = Text("you havent posted any redlies yet.")
                    } label: {
                        Text( "Redlies").frame(width: 110,height: 30).foregroundColor(Color.black)
                    }
                    Button {
                        page = Text("you havent reposted any redlies yet.")
                    } label: {
                        Text( "Reposts").frame(width: 110,height: 30).foregroundColor(Color.black)
                    }
                    
                    
                    
                    
                }
                Divider()
                VStack{
                    Spacer()
                    
                    page
                    
                    Spacer()
                    
                }
                Spacer()
            }.padding(.top)
            .navigationBarTitleDisplayMode(.inline)
                .toolbar { // <2>
                    ToolbarItem(placement: .principal) { // <3>
                        HStack{
                            Button(
                                action: {
                                    Gwt().Token = ""
                                }, label: {
                                    Image("logouticon").resizable().frame(width: 35,height: 35)
                                })
                            
                            Spacer()
                            Image("pngtree-instagram-icon-instagram-logo-png-image_3584853").resizable().frame(width: 40,height: 40)
                            Image( "pngtree-settings-icon-image_1198988").resizable().frame(width: 35,height: 35)
                        }
                    }
                }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
