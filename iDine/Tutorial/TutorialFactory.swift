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
            staticTextSection,
            othersSection
        ]
    }

    private var staticTextSection: TutorialSection {
        let items: [TutorialTopic] = [
            TutorialTopic(title: "How to create static labels with a Text view", content: StaticLabelTutorialTopicView()),
            TutorialTopic(title: "How to style text views with fonts, colors, line spacing, and more", content: TextStylingTutorialTopicView()),
            TutorialTopic(title: "How to add advanced text styling using AttributedString", content: AttributedStringTutorialTopicView()),
            TutorialTopic(title: "How to adjust text alignment using multilineTextAlignment()", content: MultilineTextAlignmentTopicView()),
            TutorialTopic(title: "How to format text inside text views", content: TextViewFormattingTutorialTopicView()),
            TutorialTopic(title: "How to add spacing between letters in text", content: TextSpacingTutorialTopicView()),
            TutorialTopic(title: "How to format dates inside text views", content: DateFormattingInsideTextViewTutorialTopic())
        ]
        return TutorialSection(title: "Working with static text", items: items)
    }

    private var othersSection: TutorialSection {
        let items: [TutorialTopic] = [
            TutorialTopic(title: "Creating a RemoteImage to load images from the web", content: RemoteImageLoadTutorialTopicView())
        ]
        return TutorialSection(title: "Others", items: items)
    }
}
