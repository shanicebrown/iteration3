//
//  MessagesView.swift
//  iteration3
//
//  Created by Shanice Brown (WHA) on 4/19/21.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        
        
        
        VStack {
            Image ("chat01")
                .resizable()
                .frame(width: 400, height: 825)
            Spacer()
                .frame(height: 40)
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
