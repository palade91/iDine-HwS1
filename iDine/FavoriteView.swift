//
//  FavoriteView.swift
//  iDine
//
//  Created by Catalin Palade on 25/03/2020.
//  Copyright © 2020 Catalin Palade. All rights reserved.
//

import SwiftUI

struct FavoriteView: View {
    
    @EnvironmentObject var favorites: Favorites
    
    var body: some View {
        NavigationView {
            List {
                ForEach(favorites.items) { item in
                    ItemRow(item: item)
                }.onDelete(perform: deleteItems)
            }
            .navigationBarTitle("Favorite")
            .listStyle(GroupedListStyle())
            .navigationBarItems(trailing: EditButton()).disabled(favorites.items.isEmpty)
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        favorites.items.remove(atOffsets: offsets)
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
