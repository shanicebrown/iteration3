//
//  OnboardingScreens.swift
//  iteration3 (iOS)
//
//  Created by Shanice Brown (WHA) on 5/4/21.
//

/*import SwiftUI

struct OnboardingScreens: View {
    
    @AppStorage("currentPage")
    
    var currentPage = 1
    
    var body: some View{
        
        
        ZStack{
            
            // To Change between views
            
            if currentPage == 1{
                OnboardingScreenView(image: "Illustration 3", title: "Step 1", detail: "", bgColor: Color("grey bg"))
                    .transition(.scale)
            }
            if currentPage == 2{
            
                OnboardingScreenView(image: "Illustration 4", title: "Step 2", detail: "", bgColor: Color("off white bg"))
                    .transition(.scale)
            }
            
            if currentPage == 3{
                
                OnboardingScreenView(image: "Illustration 5", title: "Step 3", detail: "", bgColor: Color("teal bg"))
                    .transition(.scale)
            }
            
        }
        .overlay(
        
            // Button...
            Button(action: {
                // changing views...
                withAnimation(.easeInOut){
                    
                    // checking....
                    if currentPage <= totalPages{
                        currentPage += 1
                    }
                }
            }, label: {
                
                Image(systemName: "chevron.right")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(.black)
                    .frame(width: 60, height: 60)
                    .background(Color.white)
                    .clipShape(Circle())
 
            })
            .padding(.bottom,20) ,alignment: .bottom
        )
    }
}


struct OnboardingScreens_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreens()
   }
}
*/
