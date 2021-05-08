//
//  LogInView.swift
//  iteration3 (iOS)
//
//  Created by Shanice Brown (WHA) on 5/6/21.
//

import SwiftUI
import AuthenticationServices

let deeproseColor = Color(#colorLiteral(red: 0, green: 0.8078431373, blue: 0.7960784314, alpha: 0.465055352))

let storedUsername = "Christie"
let storedPassword = "Richardson"


struct LogInView: View {
    @Binding var isLoggedIn: Bool
    @State var username: String = ""
    @State var password: String = ""
    
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = true
    var body: some View {
        
            ZStack {
                VStack {
                    Spacer()
                        .frame(height: 100)
                    Barter()
                    Image("Illustration 2")
                        .resizable()
                        .frame(width: 350, height: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Shop()
                    UsernameField(username: $username)
                    PasswordField(password: $password)
                    if authenticationDidFail {
                        Text("Information not correct. Try again.")
                            .offset(y: -10)
                            .foregroundColor(.red)
                    }
                    
                    Button(action: {
                        isLoggedIn = true
                    }, label: {
                        LoginButtonContent()
                    })
                    SignInWithAppleButton(.continue,
                    onRequest: { request in },
                    onCompletion: { result in })
                    .signInWithAppleButtonStyle(.whiteOutline)
                    .frame(height: 50)
                }
                .padding()
            }
            
        }
        
    }
    
    
    struct Barter: View {
        var body: some View {
            Text("The Barter Shop")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 10.0)
            
        }
    }
    
    
    struct Shop: View {
        var body: some View {
            Image("Bart 2")
                .resizable()
                .scaledToFit()
        }
    }
    
    struct LoginButtonContent: View {
        var body: some View {
            Text("LOGIN")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 400, height: 50)
                .background(Color.black)
                .cornerRadius(10.0)
        }
    }
    struct UsernameField: View {
        @Binding var username: String
        
        var body: some View {
            TextField("Username", text: $username)
                .padding()
                .background(deeproseColor)
                .cornerRadius(10.0)
                .padding(4.0)
        }
    }
    
    struct PasswordField: View {
        @Binding var password: String
        
        var body: some View {
            SecureField("Password", text: $password)
                .padding()
                .background(deeproseColor)
                .cornerRadius(10.0)
                .padding(4.0)
        }
    }


//struct LogInView_Previews: PreviewProvider {
//    static var previews: some View {
//        LogInView()
//    }
//}
