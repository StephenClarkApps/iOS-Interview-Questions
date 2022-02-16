//
//  ContentView.swift
//  InterviewQuestions
//
//  Created by Stephen Clark on 16/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(uiColor: UIColor.black)
                            .ignoresSafeArea()
            VStack {
                HStack {
                    Button {
                        print("Go to Core Data Section")
                    } label: {
                        Text("Core Data").font(.system(size: 43, weight: .medium, design: .rounded))
                    }
                    .buttonStyle(QuestionButtonStyle())
                    
                    Button {
                        //Text("One")
                        NSLog("GO")
                    } label: {
                        Text("Debugging").font(.system(size: 43))
                    }
                    .buttonStyle(QuestionButtonStyle())
                    
                    Button {
                        //Text("One")
                        NSLog("GO")
                    } label: {
                        Text("Memory Management").font(.system(size: 43))
                    }
                    .buttonStyle(QuestionButtonStyle())
                }
                HStack {
                    Button {
                        //Text("One")
                        NSLog("GO")
                    } label: {
                        Text("Thread Management").font(.system(size: 43))
                    }
                    .buttonStyle(QuestionButtonStyle())
                    
                    Button {
                        //Text("One")
                        NSLog("GO")
                    } label: {
                        Text("Design Patterns").font(.system(size: 43))
                    }
                    .buttonStyle(QuestionButtonStyle())
                    
                    Button {
                        //Text("One")
                        NSLog("GO")
                    } label: {
                        Text("Networking").font(.system(size: 43))
                    }
                    .buttonStyle(QuestionButtonStyle())
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewInterfaceOrientation(.landscapeRight).previewDevice("iPad Pro (12.9-inch) (5th generation)")
    }
}
