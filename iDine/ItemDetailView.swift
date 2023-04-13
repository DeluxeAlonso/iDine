//
//  ItemDetailView.swift
//  iDine
//
//  Created by Alonso on 12/03/23.
//

import SwiftUI

struct ItemDetailView: View {

    @EnvironmentObject var order: Order
    @EnvironmentObject var favorites: Favorites

    let item: MenuItem

    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            Text(item.description)
                .padding()
            Button("Order This!") {
                order.add(item: item)
            }
            .padding()
            .background(.black)
            .foregroundColor(.white)
            .cornerRadius(5.0)
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            Button {
                if isFavorite {
                    favorites.remove(item: item)
                } else {
                    favorites.add(item: item)
                }
            } label: {
                if isFavorite {
                    Image(systemName: "heart.fill")
                } else {
                    Image(systemName: "heart")
                }
            }
        }
    }

    private var isFavorite: Bool {
        favorites.containsItem(with: item.id)
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ItemDetailView(item: MenuItem.example).environmentObject(Order())
        }
    }
}
