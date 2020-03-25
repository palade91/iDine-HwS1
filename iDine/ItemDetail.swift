//
//  ItemDetail.swift
//  iDine
//
//  Created by Catalin Palade on 24/03/2020.
//  Copyright © 2020 Catalin Palade. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    
    var item: MenuItem
    
    @EnvironmentObject var order: Order
    @EnvironmentObject var favorites: Favorites
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            
            Text(item.description)
                .padding()
            
            
            VStack(alignment: .center, spacing: 20) {
                Button("Order This") {
                    self.order.add(item: self.item)
                }.font(.headline)
                .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(10)
                
                Button("Add to favorite") {
                    self.favorites.add(item: self.item)
                }.font(.headline)
                .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))
                .background(Color.green)
                .foregroundColor(Color.white)
                .cornerRadius(10)
            }
            
            
            Spacer()
        }
        .navigationBarTitle(Text(item.name), displayMode: .inline)
        
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static let order = Order()
    static let favorites = Favorites()
    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example).environmentObject(order)
                                                .environmentObject(favorites)
        }
    }
}
