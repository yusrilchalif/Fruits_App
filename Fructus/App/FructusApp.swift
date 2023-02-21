//
//  FructusApp.swift
//  Fructus
//
//  Created by Yusril on 14/02/23.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            }else{
                ContentView()
            }
        }
    }
}
