//
//  ContentView.swift
//  Shared
//
//  Created by Shanice Brown (WHA) on 4/17/21.
//

import SwiftUI

struct ContentView: View {
    @State var isLoggedIn = false
    @State var shouldShowOnboarding: Bool = true
    var body: some View {
        
        NavigationView {
            if isLoggedIn {
                TabBar()
            } else {
                LogInView(isLoggedIn: $isLoggedIn)
            }
        }
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            OnboardingScreenView(shouldShowOnboarding: $shouldShowOnboarding)
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

