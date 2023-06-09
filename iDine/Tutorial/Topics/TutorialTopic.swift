//
//  TutorialTopic.swift
//  iDine
//
//  Created by Alonso on 14/04/23.
//

import SwiftUI

protocol TutorialTopicProtocol: Identifiable {
    var title: String { get }
    var content: AnyView { get }
}

struct TutorialTopic: TutorialTopicProtocol, Hashable {
    let title: String
    let content: AnyView

    var id: String { title }

    init(title: String, content: AnyView) {
        self.title = title
        self.content = content
    }

    init(title: String, content: some View) {
        self.title = title
        self.content = AnyView(content)
    }

    static func == (lhs: TutorialTopic, rhs: TutorialTopic) -> Bool {
        lhs.title == rhs.title
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
    }
}
