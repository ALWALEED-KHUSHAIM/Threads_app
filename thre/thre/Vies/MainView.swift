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
            SershView()
            ActivetiView()
            ProfileView()
            NewPost()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
