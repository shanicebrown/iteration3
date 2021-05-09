//
//  OnboardingScreenView.swift
//  iteration3 (iOS)
//
//  Created by Shanice Brown (WHA) on 5/4/21.
//

import SwiftUI

struct OnboardingScreenView: View {
    @Binding var shouldShowOnboarding: Bool
    var body: some View {
        TabView {
            OnboardingScreens(
                image: "Illustration 5",
                title: "Step 1",
                detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                showsDismissButton: false,
                shouldShowOnboarding: $shouldShowOnboarding
                
            )
            .background(Color("yello bg").cornerRadius(22.0))
        
            OnboardingScreens(image: "Illustration 6",
                              title: "Step 2",
                              detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                              showsDismissButton: false,
                              shouldShowOnboarding: $shouldShowOnboarding
            )
                .background(Color("coral bg").cornerRadius(22.0))
            
            OnboardingScreens(image: "Illustration 7",
                              title: "Step 3",
                              detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                              showsDismissButton: true,
                              shouldShowOnboarding: $shouldShowOnboarding
            )
                .background(Color("grey bg").cornerRadius(22.0))
            
        
//        VStack(spacing: 20){
//
//            HStack{
//
//                // Showing it only for first Page...
//                if currentPage == 1{
//                    Text("The Barter Shop")
//                        .font(.title2)
//                        .fontWeight(.semibold)
//
//                        // Letter Spacing...
//                        .kerning(1.4)
//                }
//                else{
//                    // Back Button...
//                    Button(action: {
//                        withAnimation(.easeInOut){
//                            currentPage -= 1
//                        }
//                    }, label: {
//
//                        Image(systemName: "chevron.left")
//                            .foregroundColor(.white)
//                            .padding(.vertical,10)
//                            .padding(.horizontal)
//                            .background(Color.black.opacity(0.4))
//                            .cornerRadius(10)
//                    })
//                }
//
//                Spacer()
//
//                Button(action: {
//                    withAnimation(.easeInOut){
//                        currentPage = 4
//                    }
//                }, label: {
//                    Text("Skip")
//                        .fontWeight(.semibold)
//                        .kerning(1.2)
//                })
//            }
//
//            .foregroundColor(.black)
//            .padding()
//
//            Spacer(minLength: 0)
//
//            Image(image)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//
//            Text(title)
//                .font(.title)
//                .fontWeight(.bold)
//                .foregroundColor(.black)
//                .padding(.top)
//
//            Text("Lorem ipsum is dummy text used in laying out print, graphic or web designs.")
//                .fontWeight(.semibold)
//                .kerning(1.3)
//                .multilineTextAlignment(.center)
//
//            // Minimum Spacing When Phone is reducing
//
//            Spacer(minLength: 120)
//        }
//        .background(bgColor.cornerRadius(10).ignoresSafeArea())
    }
        .tabViewStyle(PageTabViewStyle())
}
}


//
//struct OnboardingScreenView_Previews: PreviewProvider {
//    static var previews: some View {
//        OnboardingScreenView(shouldShowOnboarding: $shouldShowOnboarding)
//    }
//}

