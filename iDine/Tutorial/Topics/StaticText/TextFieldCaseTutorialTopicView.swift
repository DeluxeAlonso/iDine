//
//  TextCaseTutorialTopicView.swift
//  iDine
//
//  Created by Alonso on 10/10/24.
//

import SwiftUI

struct TextFieldCaseTutorialTopicView: View {
    @State private var name = "Alonso"

    var body: some View {
        TextField("Shout your name at me", text: $name)
            .textFieldStyle(.roundedBorder)
            .textCase(.uppercase)
            .padding(.horizontal)
    }
}

struct TextCaseTutorialTopicView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldCaseTutorialTopicView()
    }
}
