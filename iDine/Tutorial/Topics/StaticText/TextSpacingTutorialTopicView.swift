//
//  TextSpacingTutorialTopicView.swift
//  iDine
//
//  Created by Alonso on 2/09/23.
//

import SwiftUI

struct TextSpacingTutorialTopicView: View {
    @State private var amount = 50.0

    var body: some View {
        VStack {
            Text("ffi")
                .font(.custom("AmericanTypewriter", size: 72))
                .kerning(amount)
            Text("ffi")
                .font(.custom("AmericanTypewriter", size: 72))
                .tracking(amount)
            Slider(value: $amount, in: 0...100) {
                Text("Adjust the amount of spacing")
            }.padding()
        }
    }
}

struct TextSpacingTutorialTopicView_Previews: PreviewProvider {
    static var previews: some View {
        TextSpacingTutorialTopicView()
    }
}
