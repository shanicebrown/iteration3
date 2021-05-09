//
//  TabBar.swift
//  iteration3 (iOS)
//
//  Created by Shanice Brown (WHA) on 4/19/21.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            BusinessView()
                
                .tabItem {
                    Image(systemName: "menubar.rectangle")
                    Text("Menu")
                    
                }
            
            BarterBoardView()
                
                .tabItem {
                    Image(systemName: "bubble.left.and.bubble.right")
                    Text("Barter Board")
                }
            
            
            MessagesView()
                
                .tabItem {
                    Image(systemName: "envelope.badge")
                    Text("Barter DM")
                }
            
            
            ProfileView()
                
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
        .accentColor(Color("teal bg"))
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
