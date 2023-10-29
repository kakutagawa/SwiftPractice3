//
//  ContentView.swift
//  MyJanken3
//
//  Created by 芥川浩平 on 2023/10/29.
//

import SwiftUI

enum Janken: String, CaseIterable {
    case gu
    case choki
    case pa

    var textName: String {
        switch self {
        case .gu:
            "グー"
        case .choki:
            "チョキ"
        case .pa:
            "パー"
        }
    }
}

struct ContentView: View {
    @State private var answer: Janken?

    var body: some View {
        VStack {
            Spacer()

            if let answer {
                Image(answer.rawValue)
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text(answer.textName)
            }

            if answer == nil {
                Text("これからじゃんけんをします")
            }

            Button {
                var newAnswer: Janken?
                repeat {
                    newAnswer = Janken.allCases.randomElement()
                } while answer == newAnswer
                answer = newAnswer
            } label: {
                Text("じゃんけんをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(.pink)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
