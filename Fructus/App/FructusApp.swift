//
//  FructusApp.swift
//  Fructus
//
//  Created by Gurleen Kaur on 2023-04-29.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }
            else{
                ContentView()
            }
        }
    }
}
