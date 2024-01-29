//
//  MultilineTextAlignmentTopicView.swift
//  iDine
//
//  Created by Alonso on 6/06/23.
//

import SwiftUI

struct MultilineTextAlignmentTopicView: View {
    private let alignments: [TextAlignment] = [.leading, .center, .trailing]
    @State private var alignment = TextAlignment.leading

    var body: some View {
        VStack {
            Picker("Text alignment", selection: $alignment) {
                ForEach(alignments, id: \.self) { alignment in
                    Text(String(describing: alignment))
                }
            }.pickerStyle(.wheel)
            Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
                .font(.largeTitle)
                .multilineTextAlignment(alignment)
                .frame(width: 300)
        }
    }
}

struct MultilineTextAlignmentTopicView_Previews: PreviewProvider {
    static var previews: some View {
        MultilineTextAlignmentTopicView()
    }
}
