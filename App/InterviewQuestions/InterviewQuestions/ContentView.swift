//
//  ContentView.swift
//  InterviewQuestions
//
//  Created by Stephen Clark on 16/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Button {
                    //Text("One")
                    NSLog("GO")
                } label: {
                    Text("One").font(.system(size: 30))
                }

                .buttonStyle(.borderedProminent)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewInterfaceOrientation(.landscapeRight).previewDevice("iPad Pro (12.9-inch) (5th generation)")
    }
}
