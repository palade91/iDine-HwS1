//
//  Favorites.swift
//  iDine
//
//  Created by Catalin Palade on 25/03/2020.
//  Copyright © 2020 Catalin Palade. All rights reserved.
//

import SwiftUI

class Favorites: ObservableObject {
    @Published var items = [MenuItem]()
    
    func add(item: MenuItem) {
        items.append(item)
    }
    
    func remove(item: MenuItem) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }
}


