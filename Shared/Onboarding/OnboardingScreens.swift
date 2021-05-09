//
//  OnboardingScreens.swift
//  iteration3 (iOS)
//
//  Created by Shanice Brown (WHA) on 5/4/21.
//

import SwiftUI

struct OnboardingScreens: View {
    var image: String
    var title: String
    var detail: String
    var showsDismissButton: Bool
    @Binding var shouldShowOnboarding: Bool
    
    var body: some View{
        
        
        VStack{
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .padding()
            
            Text(title)
                .font(.system(size: 32))
            
            Text(detail)
                .font(.system(size: 24))
                .multilineTextAlignment(.center)
                .foregroundColor((Color(.secondaryLabel)))
                .padding()
            
            if showsDismissButton {
                Button(action: {
                    shouldShowOnboarding.toggle()
                }, label: {
                    Text("Get Started Now")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 400, height: 50)
                        .background(Color("teal bg"))
                        .cornerRadius(10.0)
                })
            }
        }
    }
}


