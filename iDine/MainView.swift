//
//  MainView.swift
//  iDine
//
//  Created by Alonso on 15/03/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
            TutorialView(factory: TutorialFactory())
                .tabItem {
                    Label("Tutorials", systemImage: "book")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(Order())
            .environmentObject(Favorites())
    }
}
