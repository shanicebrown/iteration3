//
//  ProfileView.swift
//  iteration3 (iOS)
//
//  Created by Shanice Brown (WHA) on 5/6/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            VStack {
                Circle()
                    .fill(Color("off white bg"))
                    .frame(width: 150.0, height: 150.0)
                    .offset(x: 179, y: -300)
                    
               
                
                Circle()
                    .fill(Color("teal bg"))
                    .frame(width: 150.0, height: 150.0)
                    .offset(x: -180, y: -200)
                
            }  .foregroundColor(.secondary)
            GeometryReader { gr in
                VStack {
                    Spacer()
                    RoundedRectangle(cornerRadius: 40)
                        .fill(Color("off white bg"))
                        .frame(height: gr.size.height * 0.7)
                        .offset(y: 40)
                }
            }
            VStack (spacing: 16.0) {
                
                Spacer()
                    .frame(height: 20)
               // Image("17_W").mask(Circle())
                Circle()
                    .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                
                
                Capsule()
                    .fill(Color("coral bg"))
                    .frame(width: 200.0, height: 50.0)
                
                Spacer()
                    .frame(height: 75)
                HStack {
                    RoundedRectangle(cornerRadius: 15.0)
                        .fill(Color("grey bg"))
                    
                    RoundedRectangle(cornerRadius: 15.0)
                        .fill(Color("teal bg"))
                }
                HStack(spacing: 16.0) {
                    RoundedRectangle(cornerRadius: 15.0)
                        .fill(Color("coral bg"))
                    
                    RoundedRectangle(cornerRadius: 15.0)
                        .fill(Color("yello bg"))
                }
                Spacer()
                    .frame(height: 50)
                
            }
            .padding()
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


