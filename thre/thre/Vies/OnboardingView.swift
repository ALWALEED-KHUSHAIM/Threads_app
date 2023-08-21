//
//  OnboardingView.swift
//  thre
//
//  Created by الوليد خشيم on 04/02/1445 AH.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
       
        ZStack{Image("OnboardingImage").resizable()
            VStack{Spacer()
                
                Button {
                    Gwt().Token = "0"
                } label: {
                    Text(" ").frame(width: 340,height: 77).background(Color.black.opacity(0.0)).cornerRadius(16).padding(.vertical,4)
                }
                
                
                Text(" ")

            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
