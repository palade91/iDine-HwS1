//
//  AppView.swift
//  iDine
//
//  Created by Catalin Palade on 24/03/2020.
//  Copyright © 2020 Catalin Palade. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Menu")
                }
            
            FavoriteView()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Favorites")
                }
            
            OrderView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Order")
                }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static let order = Order()
    static let favorites = Favorites()
    static var previews: some View {
        AppView().environmentObject(order)
                    .environmentObject(favorites)
    }
}
