//
//  BusinessView.swift
//  iteration3
//
//  Created by Shanice Brown (WHA) on 4/17/21.
//

import SwiftUI

struct BusinessView: View {
    @State var show = false
    @Namespace var namespace
    @Namespace var namespace2
    @State var selectedItem: Business? = nil
    @State var isDisabled = false
    
    var body: some View {
        ZStack {
           
            content
                .navigationBarHidden(true)
            fullContent
                .background(VisualEffectBlur(blurStyle: .systemMaterial).edgesIgnoringSafeArea(.all))
       
        }
    }
    var content: some View {
        
        ScrollView {
            VStack(spacing: 0) {
            Text("Barter Menu")
                .font(.largeTitle)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 16)
                .padding(.top, 54)
                
                LazyVGrid(
                    columns: [GridItem(.adaptive(minimum: 160), spacing: 16)
                    ],
                    spacing: 16
                ) {
                    ForEach(businesses) { item in
                        VStack {
                            BusinessItem(business: item)
                                .matchedGeometryEffect(id: item.id, in: namespace, isSource: !show)
                                .frame(height: 200)
                                .onTapGesture {
                                    withAnimation(.spring(response: 0.5, dampingFraction: 0.8, blendDuration: 0)) {
                                        show.toggle()
                                        selectedItem = item
                                        isDisabled = true
                                    }
                                }
                                .disabled(isDisabled)
                        }
                        .matchedGeometryEffect(id: "container\(item.id)", in: namespace, isSource: !show)
                    }
                   
                }
                .padding(16)
                .frame(maxWidth: .infinity)
                
                Text("Newest Barterers")
                    .fontWeight(.semibold)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .padding()
                
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 240))]) {
                    ForEach(businessSections) { item in
                        NavigationLink(
                            destination: BusinessDetail(namespace: namespace2)) {
                    
                            BusinessRow(item: item)
                        }
                    }
                }
                
                .padding()
        }
           
        }
        .zIndex(1)
        
    }
    
    @ViewBuilder
    var fullContent: some View {
        if selectedItem != nil {
            ZStack(alignment: .topTrailing) {
                BusinessDetail(business: selectedItem!, namespace: namespace)
                CloseButton()
                    .padding(16)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            show.toggle()
                            selectedItem = nil
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            isDisabled = false
                        }
                    }
                    }
            }
            .zIndex(2)
            .frame(maxWidth: 712 )
            .frame(maxWidth: .infinity)
           
        }
        
    }
    var tabBar: some View {
        TabView {
            NavigationView {
                content
            }
            .tabItem {
                Image(systemName: "book.closed")
                Text("Menu")
            }
            NavigationView {
                MessagesView()
            }
            .tabItem {
                Image(systemName: "message")
                Text("Barter Talk")
            }
            NavigationView {
                BarterBoardView()
            }
            .tabItem {
                Image(systemName: "book.closed")
                Text("Barter Board")
            }
            NavigationView {
                ProfileView()
            }
            .tabItem {
                Image(systemName: "person")
                Text("Profile")
            }
        }
    }
    }

struct BusinessView_Previews: PreviewProvider {
    static var previews: some View {
        BusinessView()
    }
}
