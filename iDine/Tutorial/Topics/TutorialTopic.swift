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

    static func == (lhs: TutorialTopic, rhs: TutorialTopic) -> Bool {
        lhs.title == rhs.title
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
    }
}
