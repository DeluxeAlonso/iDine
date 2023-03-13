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

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(order)
        }
    }
}
