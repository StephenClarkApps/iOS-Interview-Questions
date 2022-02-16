//
//  QuestionButtonStyle.swift
//  InterviewQuestions
//
//  Created by Stephen Clark on 16/02/2022.
//

import SwiftUI

struct QuestionButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) private var isEnabled

    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .frame(width: 400, height: 150, alignment: .center)
            .buttonStyle(.automatic)
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding()
    }
}
