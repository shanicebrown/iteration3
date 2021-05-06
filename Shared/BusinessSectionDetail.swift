//
//  BusinessSectionDetail.swift
//  iteration3
//
//  Created by Shanice Brown (WHA) on 4/26/21.
//

import SwiftUI

struct BusinessSectionDetail: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
    
        ZStack(alignment: .topTrailing) {
            ScrollView {
                BusinessItem(cornerRadius: 0)
                    .frame(height: 300)
                VStack (alignment: .leading, spacing: 10) {
                    Text("ABC & 123 Daycare").bold()
                    Text("1901 W. Cornelia Ave")
                    Text("60657")
                    
                    Image("daycare")
                       
                        
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ")
                }
                .padding()
                .font(.title2)
            }
            
            CloseButton()
                .padding()
                .onTapGesture {
                    presentationMode.wrappedValue.dismiss()
                }
        }
    }
}

struct BusinessSectionDetail_Previews: PreviewProvider {
    static var previews: some View {
        BusinessSectionDetail()
    }
}
