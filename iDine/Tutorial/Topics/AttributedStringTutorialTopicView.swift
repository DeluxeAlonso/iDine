//
//  AttributedStringTutorialTopicView.swift
//  iDine
//
//  Created by Alonso on 22/04/23.
//

import SwiftUI

struct AttributedStringTutorialTopicView: View {
    var message: AttributedString {
        var result = AttributedString("Hello, world!")
        result.font = .largeTitle
        result.foregroundColor = .white
        result.backgroundColor = .red
        return result
    }

    var message1: AttributedString {
        var result = AttributedString("Hello")
        result.font = .largeTitle
        result.foregroundColor = .white
        result.backgroundColor = .red
        return result
    }

    var message2: AttributedString {
        var result = AttributedString("World!")
        result.font = .largeTitle
        result.foregroundColor = .white
        result.backgroundColor = .blue
        return result
    }

    var underlineMessage: AttributedString {
        var result = AttributedString("Testing 1 2 3!")
        result.font = .largeTitle
        result.foregroundColor = .white
        result.backgroundColor = .blue
        result.underlineStyle = .init(pattern: .solid, color: .white)
        return result
    }

    var baselineOffsetAdjustedMessage: AttributedString {
        let string = "The letters go up and down"
        var result = AttributedString()
        for (index, character) in string.enumerated() {
            var letterString = AttributedString(String(character))
            letterString.baselineOffset = sin(Double(index)) * 5
            result += letterString
        }
        result.font = .largeTitle
        return result
    }

    var linkMessage: AttributedString {
        var result = AttributedString("Learn Swift here")
        result.font = .largeTitle
        result.link = URL(string: "https://www.hackingwithswift.com")
        return result
    }

    var accessibilityMessage: AttributedString {
        var password = AttributedString("abCayer-muQai")
        password.accessibilitySpeechSpellsOutCharacters = true
        return "Your password is " + password
    }

    var dateMessage: AttributedString {
        var result = Date.now.formatted(.dateTime.weekday(.wide).day().month(.wide).attributed)
        result.foregroundColor = .secondary

        let weekDay = AttributeContainer.dateField(.weekday)
        let weekDayStyling = AttributeContainer.foregroundColor(.primary)
        result.replaceAttributes(weekDay, with: weekDayStyling)

        return result
    }

    var nameMessage: AttributedString {
        var components = PersonNameComponents()
        components.givenName = "Taylor"
        components.familyName = "Swift"

        var result = components.formatted(.name(style: .long).attributed)

        let familyNameStyling = AttributeContainer.font(.headline)
        let familyName = AttributeContainer.personNameComponent(.familyName)
        result.replaceAttributes(familyName, with: familyNameStyling)
        return result
    }

    var measurementMessage: AttributedString {
        var amount = Measurement(value: 200, unit: UnitLength.kilometers)
        var result = amount.formatted(.measurement(width: .wide).attributed)

        let distanceStyling = AttributeContainer.font(.title)
        let distance = AttributeContainer.measurement(.value)
        result.replaceAttributes(distance, with: distanceStyling)
        return result
    }

    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 16.0) {
                Text(message)
                Text(message1 + message2)
                Text(underlineMessage)
                Text(baselineOffsetAdjustedMessage)
                Text(linkMessage)
                Text(accessibilityMessage)
                Text(dateMessage)
                Text(nameMessage)
                Text(measurementMessage)
            }
        }
    }
}

struct AttributedStringTutorialTopicView_Previews: PreviewProvider {
    static var previews: some View {
        AttributedStringTutorialTopicView()
    }
}
