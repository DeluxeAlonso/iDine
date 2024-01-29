//
//  TextViewFormattingTutorialTopicView.swift
//  iDine
//
//  Created by Alonso on 21/06/23.
//

import SwiftUI

struct TextViewFormattingTutorialTopicView: View {
    // iOS 15
    @State private var ingredients: [String] = []
    @State private var rolls: [Int] = []

    let length = Measurement(value: 225, unit: UnitLength.centimeters)

    // iOS 13/14
    static let taskDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    let dueDate = Date.now

    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 16.0) {
                Section(header: Text("iOS 15").font(.headline)) {
                    Group {
                        Text(ingredients, format: .list(type: .and))

                        Button("Add Ingredient") {
                            let possibles = ["Egg", "Sausage", "Bacon", "Spam"]
                            if let newIngredient = possibles.randomElement() {
                                ingredients.append(newIngredient)
                            }
                        }
                    }
                    Group {
                        Text(rolls, format: .list(memberStyle: .number, type: .and))

                        Button("Roll Dice") {
                            let result = Int.random(in: 1...6)
                            rolls.append(result)
                        }
                    }

                    Text(length, format: .measurement(width: .wide))

                    Text(72.3, format: .currency(code: "CAD"))
                }
                Spacer(minLength: 16.0)
                Section(header: Text("iOS 13/14").font(.headline)) {
                    Text("Task due date: \(dueDate, formatter: Self.taskDateFormat)")
                }
            }
        }
    }
}

struct TextViewFormattingTutorialTopicView_Previews: PreviewProvider {
    static var previews: some View {
        TextViewFormattingTutorialTopicView()
    }
}
