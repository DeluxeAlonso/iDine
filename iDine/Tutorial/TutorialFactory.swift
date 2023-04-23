//
//  TutorialFactory.swift
//  iDine
//
//  Created by Alonso on 14/04/23.
//

import SwiftUI

protocol TutorialFactoryProtocol {
    var sections: [TutorialSection] { get }
}

struct TutorialFactory: TutorialFactoryProtocol {
    var sections: [TutorialSection] {
        [
            staticTextSection
        ]
    }

    private var staticTextSection: TutorialSection {
        let staticLabelsItem = TutorialTopic(title: "How to create static labels with a Text view", content: AnyView(StaticLabelTutorialTopicView()))
        let textStylingItem = TutorialTopic(title: "How to style text views with fonts, colors, line spacing, and more", content: AnyView(TextStylingTutorialTopicView()))

        return TutorialSection(title: "Working with static text", items: [staticLabelsItem, textStylingItem])
    }
}
