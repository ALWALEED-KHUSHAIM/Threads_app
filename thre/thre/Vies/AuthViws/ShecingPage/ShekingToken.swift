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
        
      
        
        if token.Token == ""  {
            
            OnboardingView()
        } else   {
            MainView()
        }
    }
}

struct SheckTheToken_Previews: PreviewProvider {
    static var previews: some View {
        SheckTheToken()
    }
}

