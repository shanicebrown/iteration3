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
        VStack {
            TextEditor(text: $postMessage)
                .frame(height: 100)
                .border(Color.yellow, width: 2)
                .cornerRadius(3.0)
                .padding()
            Button(action: {
                board.posts.append(Post(message: postMessage))
                cloud.save(data: board)
                postMessage = ""
                hideKeyboard()
            }, label: {
                Text("Add Post")
            }).padding()
            Spacer()
            List {
                ForEach(board.posts, id: \.self) { post in
                    Text(post.message).padding(10)
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
            }).padding()
        }.onAppear {
            cloud.get(dummy: Board(), queries: ["id": kBoardUUID]) { boards in
                if boards.count > 0 {
                    self.board = boards.first!
                }
            }
        }
    }
}
struct BarterBoardView_Previews: PreviewProvider {
    static var previews: some View {
        BarterBoardView()
    }
}
