//
//  threApp.swift
//  thre
//
//  Created by الوليد خشيم on 04/02/1445 AH.
//
import FirebaseCore
import SwiftUI

@main
struct threApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationStack{
            WelcomeScreneView()
        }}
    }
}
