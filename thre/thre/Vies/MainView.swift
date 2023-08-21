//
//  MainView.swift
//  thre
//
//  Created by الوليد خشيم on 04/02/1445 AH.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            
            HomeView()
            
                .tabItem {
                    Label("Home", systemImage: "lightbulb.fill")
                }
            SershView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            ActivetiView()
                .tabItem {
                    Label("ActivetiView", systemImage: "heart")
                    
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
