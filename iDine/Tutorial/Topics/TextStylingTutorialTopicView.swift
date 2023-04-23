//
//  TextStylingTutorialTopicView.swift
//  iDine
//
//  Created by Alonso on 15/04/23.
//

import SwiftUI

struct TextStylingTutorialTopicView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 16) {
                Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
                    .font(.largeTitle)
                    .padding(8)
                Text("The best laid plans")
                    .foregroundColor(.red)
                Text("The best laid plans")
                    .font(.largeTitle)
                    .foregroundStyle(.blue.gradient)
                Text("The best laid plans")
                    .padding()
                    .background(.yellow)
                    .foregroundColor(.white)
                    .font(.headline)
                Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
                    .font(.largeTitle)
                    .lineSpacing(50)
                    .frame(width: 300)
                Text("Hello, world!")
                    .fontDesign(.serif)// Updates font style wihtout updating its size
                Text("Hello, world!")
                    .fontWidth(.condensed)// Compres/Expand the font
                    .padding()
            }
        }
    }
}

struct TextStylingTutorialTopicView_Previews: PreviewProvider {
    static var previews: some View {
        TextStylingTutorialTopicView()
    }
}
