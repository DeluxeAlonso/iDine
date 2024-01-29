//
//  StaticLabelTutorialTopicView.swift
//  iDine
//
//  Created by Alonso on 14/04/23.
//

import SwiftUI

struct StaticLabelTutorialTopicView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 8) {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Spacer()
                Text("This is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clip.")
                    .lineLimit(3)
                    .frame(width: 200)
                Spacer()
                Text("This is some longer text that is limited to a specific range of lines, so anything more than six lines will cause the text to clip.")
                    .lineLimit(3...6)
                    .frame(width: 200)
                Spacer()
                Text("This is always two lines")
                    .lineLimit(2, reservesSpace: true)
                Spacer()
                Text("This is an extremely long string of text that will never fit even the widest of iOS devices even if the user has their Dynamic Type setting as small as is possible, so in theory it should definitely demonstrate truncationMode().")
                    .lineLimit(1)
                    .truncationMode(.middle)
                Spacer()
            }
        }
    }
}

struct StaticLabelTutorialTopicView_Previews: PreviewProvider {
    static var previews: some View {
        StaticLabelTutorialTopicView()
    }
}
