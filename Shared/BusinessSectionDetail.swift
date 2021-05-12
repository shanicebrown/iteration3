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
                    Text("Trust & Care Lawn Services").bold()
                    Text("2300 W. 90th St.")
                    Text("60643")
                    
                    Image("lawn")
                    
                    
                    Text("Trust & Care Services is a social enterprise landscaping and snow removal company geared towards creating jobs for people in under-served communities. We are recognized as the leader in Lawn Care, Landscaping, Snow Removal and Parking Lot Maintenance in the greater Chicago area. Whether you need knowledgeable and expert lawn service, custom designed residential or commercial landscaping, professional snow removal services, or parking lot maintenance. ")
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
