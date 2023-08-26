//
//  ContentView.swift
//  thre
//
//  Created by الوليد خشيم on 04/02/1445 AH.
//

import SwiftUI

struct SheckTheToken: View {
   
    @ObservedObject var token = Gwt()
   
    var body: some View {
        
      
        
        if token.Token == "Wf_vip" && Gwt().password == "12345" {
            MainView()
            
        } else   {
            OnboardingView()
        }
    }
}

struct SheckTheToken_Previews: PreviewProvider {
    static var previews: some View {
        SheckTheToken()
    }
}

