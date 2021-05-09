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
                    
                    
                    Text("ABC & 123 Daycare is a registered child care.  We provide loving and educational experiences for children ages two – six years old, with teachers who are sensitive to the individual needs of the students. We strive to nurture the hearts and minds of our students academically, socially, emotionally, and spiritually.   ")
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
