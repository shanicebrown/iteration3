//
//  BarterBoardView.swift
//  iteration3
//
//  Created by Shanice Brown (WHA) on 4/19/21.
//

import SwiftUI
import AppDevWithSwiftLibrary

let kBoardUUID = "de86cf95-eb9f-42c4-aed0-d80422b6cc54".uppercased()
struct Post: Hashable, Codable {
    var id = UUID()
    var message = String()
   
}
struct Board: Hashable, Codable {
    var id = UUID()
    var name = String()
    var posts = [Post]()
    
}
struct BarterBoardView: View {
    let cloud = AppDevWithSwiftCloud(appID: "094fdc57-8f37-43cf-b1ec-7d7e89732327", userID: "kevin")
    @State private var board = Board(id: UUID(uuidString: kBoardUUID)!, name: "First Board", posts: [])
    @State private var postMessage = String()
    var body: some View {
        ZStack {
            VStack {
               Text("Barter Board")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                TextEditor(text: $postMessage)
                    .frame( height: 55)
                   .cornerRadius(10.0)
                    .padding()
                Button(action: {
                    board.posts.append(Post(message: postMessage))
                    cloud.save(data: board)
                    postMessage = ""
                    hideKeyboard()
                }, label: {
                    Text("Add Post")
                        .font(.title3)
                        .foregroundColor(Color("teal bg"))
                }).padding(16)
                
                Spacer()
                    .frame(height: 10)
                List {
                    ForEach(board.posts, id: \.self) { post in
                        HStack {
                            Image(systemName: "building.2").foregroundColor(Color("teal bg"))
                            Text(post.message)
                        }
                    
                    }.onDelete(perform: { indexSet in
                        board.posts.remove(atOffsets: indexSet)
                        cloud.save(data: board)
                    })
                }
                Spacer()
                Button(action: {
                    cloud.get(dummy: Board(), queries: ["id": kBoardUUID]) { boards in
                        if boards.count > 0 {
                            self.board = boards.first!
                        }
                    }
                }, label: {
                    Text("Get Board Posts")
                        .font(.title3)
                        .foregroundColor(Color("teal bg"))
                }).padding()
            }.onAppear {
                cloud.get(dummy: Board(), queries: ["id": kBoardUUID]) { boards in
                    if boards.count > 0 {
                        self.board = boards.first!
                    }
                }
        }
        }
        .background(Color(#colorLiteral(red: 0.8470588235, green: 0.8470588235, blue: 0.8470588235, alpha: 1)))
        .navigationBarHidden(true)
    }
    
}
struct BarterBoardView_Previews: PreviewProvider {
    static var previews: some View {
        BarterBoardView()
    }
}
