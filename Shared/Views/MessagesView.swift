//
//  MessagesView.swift
//  iteration3
//
//  Created by Shanice Brown (WHA) on 4/19/21.
//

import SwiftUI

//View for the messages
struct MessagesView: View {
    var body: some View {
        
        VStack {
            ChatTopView()
            ConversationView()
            ChatBottomBar().padding(
                .bottom, 10)
    }
        .navigationBarHidden(true)
}
}

//View for the conversation
struct  ConversationView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ForEach(AllMessages) { chat
                    in
                    
                    ChatCell(data: chat)
                }
            }
        }.padding(.horizontal, 15)
    }
}

// Creating the message bubble its self
struct messageBubble: Shape {
    var myMessage: Bool
    func path(in rect: CGRect) -> Path {
        let path =
            UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight, myMessage ? .bottomLeft: .bottomRight], cornerRadii: CGSize(width:25, height: 25))
        return Path(path.cgPath)
    }
}

// Creating the two chat cells.
struct ChatCell: View {
    var data: Message
    var body: some View {
        HStack {
            if data.myMessage {
                Spacer()
                Text(data.message)
                    .padding()
                    .background(Color("teal bg"))
                    .clipShape(messageBubble(myMessage: data.myMessage))
                    .foregroundColor(.white)
            } else {
                Text(data.message)
                    .padding()
                    .foregroundColor(.primary)
                    .background(Color.secondary.opacity(0.2))
                    .clipShape(messageBubble(myMessage: data.myMessage))
                Spacer()
            }
        } .padding(data.myMessage ? .leading: .trailing, 55).padding(.vertical, 10)
    }
}


struct Message: Identifiable {
    var id: Int
    var message: String
    var myMessage: Bool
}


// Creating the static imessage chat field at the bottom.
struct ChatBottomBar: View {
    var body: some View {
        HStack (spacing: 20) {
            Image(systemName: "camera.fill").font(.headline)
                .foregroundColor(.secondary)
            HStack {
                Text("Barter Message")
                    .font(.subheadline)
                    .padding(.leading)
                Spacer()
                Image(systemName: "arrow.up.circle.fill")
                    .font(.headline)
                    .foregroundColor(Color("teal bg"))
                
            }
            .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
            .foregroundColor(.secondary)
            .background(Color.gray
            .opacity(0.1))
            .clipShape(Capsule())
            .shadow(radius: 1)
        }.padding(.horizontal, 20)
    }
}

// Creating TopView with advatar and logo

struct  ChatTopView: View  {
    var body: some View {
        VStack {
            HStack {
             Spacer()
                VStack {
                    Image("04_M")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .foregroundColor(.secondary)
                    Text("Paul Callejas").font(.footnote)
                }
                Spacer()
                    .frame(width: 43)
                Image("Logo Barter Shop")
                
            }.padding()
        }.frame(height: 80).background(Color("grey bg")
        .opacity(0.1))
    }
}

// imessage hard coded.
var AllMessages = [
    Message(id: 0, message: "Hey Paul, Im Regina I am a stylist. I recently visited your profile. Are you a landscaper? I could use my lawn mowed and weeds removed.", myMessage: false),
    Message(id: 1, message: "Hello Regenia. I am actually in need of a hair cut ASAP. Maybe we can work something out.", myMessage: true),
    Message(id: 2, message: "Sounds good what's your availabilty like next week. Looking to barter right away.", myMessage: false),
    Message(id: 3, message: "Monday or Tuesday is fine. If we have a deal I can send you the offer.", myMessage: true),
    Message(id: 4, message: "Yes we have a deal.", myMessage: false),
    Message(id: 6, message: "Sending the offer now.", myMessage: true),
    Message(id: 7, message: "System Message: You have been sent a new barter.  This chat thread is verification of your agreement. Once you accept the offer, your barter detail will be provided to you.", myMessage: true),
]

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
