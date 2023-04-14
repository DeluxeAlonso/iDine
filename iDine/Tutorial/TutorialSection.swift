//
//  TutorialSection.swift
//  iDine
//
//  Created by Alonso on 14/04/23.
//

import SwiftUI

struct TutorialSection: Identifiable {
    let title: String
    let items: [TutorialTopic]

    var id: String { title }
}
