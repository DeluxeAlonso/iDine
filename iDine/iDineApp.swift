//
//  iDineApp.swift
//  iDine
//
//  Created by Alonso on 12/03/23.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    @StateObject var favorites = Favorites()

    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
                .environmentObject(favorites)
        }
    }
}
