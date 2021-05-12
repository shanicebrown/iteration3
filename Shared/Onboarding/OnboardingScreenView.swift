//
//  OnboardingScreenView.swift
//  iteration3 (iOS)
//
//  Created by Shanice Brown (WHA) on 5/4/21.
//

import SwiftUI

struct OnboardingScreenView: View {
    @Binding var shouldShowOnboarding: Bool
    @State var pageNumber = 0
    var body: some View {
        TabView(selection:$pageNumber) {
            
            VStack {
                Spacer().frame(height: 100)
                OnboardingScreens(
                    image: "Illustration 5",
                    title: "Explore",
                    detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
                    showsDismissButton: false,
                    shouldShowOnboarding: $shouldShowOnboarding
                    
                )
                .background(Color("teal bg").cornerRadius(22.0))
                Spacer()
            }
            .tag(0)
            
            
            VStack {
                Spacer().frame(height: 100)
                OnboardingScreens(image: "Illustration 6",
                                  title: "Share",
                                  detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
                                  showsDismissButton: false,
                                  shouldShowOnboarding: $shouldShowOnboarding
                )
                .background(Color("coral bg").cornerRadius(22.0))
                Spacer()
            }
            .tag(1)
            
            
            
            VStack {
                Spacer().frame(height: 100)
                OnboardingScreens(image: "Illustration 7",
                                  title: "Commumicate",
                                  detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
                                  showsDismissButton: true,
                                  shouldShowOnboarding: $shouldShowOnboarding
                )
                .background(Color("yello bg").cornerRadius(22.0))
                Spacer()
                
            }
            .tag(2)
            
            VStack {
                Spacer().frame(height: 100)
                OnboardingScreens(image: "Illustration 6",
                                  title: "Visit the Profile",
                                  detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
                                  showsDismissButton: false,
                                  shouldShowOnboarding: $shouldShowOnboarding
                )
                .background(Color("grey bg").cornerRadius(22.0))
                Spacer()
                
                if pageNumber == 3 {
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
                    .padding(.bottom, 40)
                }
            }
            .tag(3)
            
            
        }
        
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        
    }
}



//struct OnboardingScreenView_Previews: PreviewProvider {
//    static var previews: some View {
//        OnboardingScreenView(shouldShowOnboarding: $shouldShowOnboarding)
//    }
//}

