//
//  BusinessItem.swift
//  iteration3
//
//  Created by Shanice Brown (WHA) on 4/17/21.
//

import SwiftUI

struct BusinessItem: View {
    var business: Business = businesses[0]
    #if os(iOS)
    var cornerRadius: CGFloat = 22
    #else
    var cornerRadius: CGFloat = 10
    #endif
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            Spacer()
            HStack {
                Spacer()
                Image(business.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
        }
            Text(business.industry)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                
            //Text(business.description)
              // .font(.footnote)
               // .foregroundColor(.black)
                
                
        }
        .padding(.all)
        .background(business.color)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
        .shadow(color: business.color.opacity(0.3), radius: 20, x: 0, y: 10)
    }
}

struct BusinessItem_Previews: PreviewProvider {
    static var previews: some View {
        BusinessItem()
    }
}
