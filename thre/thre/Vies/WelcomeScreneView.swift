//
//  WelcomeScreneView.swift
//  thre
//
//  Created by الوليد خشيم on 05/02/1445 AH.
//

import SwiftUI

struct WelcomeScreneView: View {
    var body: some View {
         HStack{
            ZStack{
                Image("welcome_imege 1").resizable()
                NavigationLink(destination:  SheckTheToken().navigationBarBackButtonHidden(true)) {
                    Text(" ").frame(width: 410,height: 820)
                }
            }
          
        }
        
    }}

struct WelcomeScreneView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreneView()
    }
}
