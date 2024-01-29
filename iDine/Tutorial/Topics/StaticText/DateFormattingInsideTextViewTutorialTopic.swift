//
//  DateFormattingInsideTextViewTutorialTopic.swift
//  iDine
//
//  Created by Alonso on 3/09/23.
//

import SwiftUI

struct DateFormattingInsideTextViewTutorialTopic: View {
    var body: some View {
        VStack {
            Text(Date.now.addingTimeInterval(600), style: .date)
            Text(Date.now.addingTimeInterval(600), style: .time)
            Text(Date.now.addingTimeInterval(600), style: .relative)
            Text(Date.now.addingTimeInterval(600), style: .time)
        }
    }
}

struct DateFormattingInsideTextViewTutorialTopic_Previews: PreviewProvider {
    static var previews: some View {
        DateFormattingInsideTextViewTutorialTopic()
    }
}
