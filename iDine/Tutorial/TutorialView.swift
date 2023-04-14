//
//  TutorialView.swift
//  iDine
//
//  Created by Alonso on 14/04/23.
//

import SwiftUI

struct TutorialView: View {
    let factory: TutorialFactoryProtocol

    var body: some View {
        NavigationStack {
            List {
                ForEach(factory.sections) { section in
                    Section(section.title) {
                        ForEach(section.items) { item in
                            NavigationLink(value: item) {
                                Text(item.title)
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: TutorialTopic.self) { topic in
                topic.content
            }
            .navigationTitle("Menu")
            .listStyle(.grouped)
        }
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView(factory: TutorialFactory())
    }
}
