//
//  FlipCardEffectTutorialTopicView.swift
//  iDine
//
//  Created by Alonso on 11/04/24.
//

import SwiftUI

struct FlipView<Back: View, Front: View>: View {
    var isFlipped: Bool
    var front: () -> Front
    var back: () -> Back

    init(isFlipped: Bool,
         @ViewBuilder front: @escaping () -> Front,
         @ViewBuilder back: @escaping () -> Back) {
        self.isFlipped = isFlipped
        self.front = front
        self.back = back
    }

    var body: some View {
        ZStack {
            front()
                .rotation3DEffect(.degrees(isFlipped ? 180.0 : 0.0), axis: (x: 0, y: 1, z: 0))
                .opacity(isFlipped ? 0 : 1)
                .accessibilityHidden(isFlipped)

            back()
                .rotation3DEffect(.degrees(isFlipped ? 0 : -180.0), axis: (x: 0, y: 1, z: 0))
                .opacity(isFlipped ? 1 : 0)
                .accessibilityHidden(!isFlipped)
        }
    }
}

struct FlipCardEffectTutorialTopicView: View {
    @State private var cardFlipped = false

    var body: some View {
        FlipView(isFlipped: cardFlipped) {
            Text("Front Side")
                .font(.largeTitle)
                .padding()
                .background(Color.yellow)
                .clipShape(RoundedRectangle(cornerRadius: 25))
        } back: {
            Text("Back Side")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .background(Color.red)
                .clipShape(RoundedRectangle(cornerRadius: 25))
        }
        .animation(.spring(response: 0.35, dampingFraction: 0.7), value: cardFlipped)
        .onTapGesture {
            cardFlipped.toggle()
        }
    }
}

struct FlipCardEffectTutorialTopicView_Previews: PreviewProvider {
    static var previews: some View {
        FlipCardEffectTutorialTopicView()
    }
}
