//
//  ContentView.swift
//  Shared
//
//  Created by Shanice Brown (WHA) on 4/17/21.
//

import SwiftUI

struct ContentView: View {
    @State var isLoggedIn = false
    
    var body: some View {
        if isLoggedIn {
            TabBar()
        } else {
            LogInView(isLoggedIn: $isLoggedIn)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

