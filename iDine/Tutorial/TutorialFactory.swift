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
        return TutorialSection(title: "Working with static text", items: [staticLabelsItem])
    }
}
