//
//  OnboardingScreenView.swift
//  iteration3 (iOS)
//
//  Created by Shanice Brown (WHA) on 5/4/21.
//

/*import SwiftUI

struct OnboardingScreenView: View {
    var image: String
    var title: String
    var detail: String
    var bgColor: Color
    
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        VStack(spacing: 20){
            
            HStack{
                
                // Showing it only for first Page...
                if currentPage == 1{
                    Text("The Barter Shop")
                        .font(.title2)
                        .fontWeight(.semibold)
                   
                        // Letter Spacing...
                        .kerning(1.4)
                }
                else{
                    // Back Button...
                    Button(action: {
                        withAnimation(.easeInOut){
                            currentPage -= 1
                        }
                    }, label: {
                        
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                            .padding(.vertical,10)
                            .padding(.horizontal)
                            .background(Color.black.opacity(0.4))
                            .cornerRadius(10)
                    })
                }
                
                Spacer()
                
                Button(action: {
                    withAnimation(.easeInOut){
                        currentPage = 4
                    }
                }, label: {
                    Text("Skip")
                        .fontWeight(.semibold)
                        .kerning(1.2)
                })
            }
            
            .foregroundColor(.black)
            .padding()
            
            Spacer(minLength: 0)
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding(.top)
            
            Text("Lorem ipsum is dummy text used in laying out print, graphic or web designs.")
                .fontWeight(.semibold)
                .kerning(1.3)
                .multilineTextAlignment(.center)
            
            // Minimum Spacing When Phone is reducing
            
            Spacer(minLength: 120)
        }
        .background(bgColor.cornerRadius(10).ignoresSafeArea())
    }
}




struct OnboardingScreenView_Previews: //PreviewProvider {
    static var previews: some View {
        OnboardingScreenView()
    }
}
*/
