//
//  FavoritesView.swift
//  iDine
//
//  Created by Alonso on 12/04/23.
//

import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var favorites: Favorites

    var body: some View {
        NavigationStack {
            List {
                ForEach(favorites.items) { item in
                    NavigationLink(value: item) {
                        ItemRowView(item: item)
                    }
                }
            }
            .navigationDestination(for: MenuItem.self) { item in
                ItemDetailView(item: item)
            }
            .navigationTitle("Favorites")
            .listStyle(.grouped)
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
