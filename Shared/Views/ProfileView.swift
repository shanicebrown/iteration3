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
                    .fill(Color("yello bg"))
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
                        .frame(height: gr.size.height * 0.68)
                        .offset(y: 40)
                }
            }
            VStack (spacing: 16.0) {
                
                Spacer()
                    .frame(height: 20)
                
                
        Image("17_W")
            .resizable()
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color("teal bg")))
                
                
                Text("Regina Rivera")
                    .font(.title)
                    .foregroundColor(.black)
                    .frame(width: 200.0, height: 50.0)
                    .background(Color("coral bg"))
                    .cornerRadius(10.0)
                
                Spacer()
                    .frame(height: 75)
                
                
                    HStack(spacing: 16.0) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 22)
                               
                            .fill(Color("grey bg"))
                            VStack {
                                Image(systemName: "checkmark.seal")
                                    .resizable()
                                    .foregroundColor(.blue)
                                    
                                    
    
                                    .frame(width: 40, height: 40)
                                    
                                    
                            
                                Text("Verified")
                                    .fontWeight(.semibold)
                                .foregroundColor(.black)
                        }
                        }
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 22)
                                .fill(Color("teal bg"))
                            VStack {
                                Image("stars")
                                    .resizable()
                                    .frame(width: 90, height: 60, alignment: .center)
                                    .frame(width: 30, height: 5)
                                    .foregroundColor(Color.yellow)
                                   
                            
                                Text("Barterer")
                                    .fontWeight(.semibold)
                                .foregroundColor(.black)
                            }
                            
                          
                        }
                    }
               
                HStack(spacing: 16.0) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 22)
                            .fill(Color("coral bg"))
                        VStack {
                            Image(systemName: "calendar")
                                .resizable()
                                .foregroundColor(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))

                                .frame(width: 40, height: 40)
                                
                                
                        
                            Text("Member Since April 21'")
                                .fontWeight(.semibold)
                            .foregroundColor(.black)
                        }
                        
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 22)
                            .fill(Color("yello bg"))
                        
                        VStack{
                            Image(systemName: "bell")
                                .resizable()
                                .foregroundColor(.red)
                                
                                

                                .frame(width: 40, height: 40)
                                
                                
                        
                            Text("Notifications")
                                .fontWeight(.semibold)
                            .foregroundColor(.black)
                    }
                    }
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


