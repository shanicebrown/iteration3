//
//  BusinessCategoryDetail.swift
//  iteration3
//
//  Created by Shanice Brown (WHA) on 4/18/21.
//

import SwiftUI

struct BusinessDetail: View {
    
    var business: Business = businesses[0]
    var namespace: Namespace.ID
    var cornerRadius: CGFloat = 10
    
    @State var showModal = false
    
    var body: some View {
        
        content
            .edgesIgnoringSafeArea(.all)
        
    }
    
    var content: some View {
        VStack {
            ScrollView {
                BusinessItem(business: business, cornerRadius: 0)
                    .matchedGeometryEffect(id: business.id, in: namespace)
                    .frame(height:300)
                VStack {
                    ForEach(businessSections) { item in
                        BusinessRow(item: item)
                            .sheet(isPresented: $showModal) {
                                BusinessSectionDetail()
                                
                            }
                            .onTapGesture {
                                showModal = true
                            }
                        Divider()
                    }
                }
                .padding()
                
            }
            
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous
        ))
        .matchedGeometryEffect(id: "container\(business.id)", in: namespace)
        
    }
}

struct BusinessCategoryDetail_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        BusinessDetail(namespace: namespace)
    }
}
