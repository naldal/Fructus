//
//  FructusApp.swift
//  Fructus
//
//  Created by 송하민 on 2021/08/13.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView(fruits: fruitsData)
            }
        }
    }
}
