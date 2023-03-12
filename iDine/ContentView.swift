//
//  ContentView.swift
//  iDine
//
//  Created by Alonso on 12/03/23.
//

import SwiftUI

struct ContentView: View {

    private let menuSections = Bundle.main.decode([MenuSection].self, from: "menu.json")

    var body: some View {
        NavigationStack {
            List {
                ForEach(menuSections) { section in
                    Section(section.name) {
                        ForEach(section.items) { item in
                            Text(item.name)
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .listStyle(.grouped)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
