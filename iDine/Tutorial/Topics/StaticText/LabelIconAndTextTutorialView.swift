//
//  LabelIconAndTextTutorialView.swift
//  iDine
//
//  Created by Alonso on 10/10/24.
//

import SwiftUI

struct LabelIconAndTextTutorialView: View {
    var body: some View {
        VStack {
            Label("Your account", systemImage: "folder.circle")
            Label("Your account", systemImage: "person.crop.circle")
                .font(.title)
            Label("Text Only", systemImage: "heart")
                .font(.title)
                .labelStyle(.titleOnly)
            Label("Icon Only", systemImage: "star")
                .font(.title)
                .labelStyle(.iconOnly)
            Label("Both", systemImage: "paperplane")
                .font(.title)
                .labelStyle(.titleAndIcon)
        }
    }
}

struct LabelIconAndTextTutorialView_Previews: PreviewProvider {
    static var previews: some View {
        LabelIconAndTextTutorialView()
    }
}
