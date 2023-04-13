//
//  Favorites.swift
//  iDine
//
//  Created by Alonso on 12/04/23.
//

import SwiftUI

class Favorites: ObservableObject {
    @Published var items = [MenuItem]()

    func containsItem(with id: UUID) -> Bool {
        items.contains(where: { $0.id == id })
    }

    func add(item: MenuItem) {
        guard !items.contains(where: { $0.id == item.id }) else { return }
        items.append(item)
    }

    func remove(item: MenuItem) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }
}
