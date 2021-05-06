//
//  BusinessRow.swift
//  iteration3
//
//  Created by Shanice Brown (WHA) on 4/17/21.
//

import SwiftUI

struct BusinessRow: View {
    var item: BusinessSection = businessSections[0]
    
    var body: some View {
        HStack(alignment: .top) {
            Image(item.logo)
                .renderingMode(.original)
                .frame(width: 48.0, height: 48.0)
                .imageScale(.small)
                .background(item.color)
                .clipShape(Circle())
                .foregroundColor(.white)
                
            VStack(alignment: .leading, spacing: 4.0) {
                Text(item.businessName)
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.primary)
                Text(item.serviceProvided)
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
            
        }
    }
}

struct BusinessRow_Previews: PreviewProvider {
    static var previews: some View {
        BusinessRow()
    }
}
