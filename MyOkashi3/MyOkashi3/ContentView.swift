//
//  ContentView.swift
//  MyOkashi3
//
//  Created by 芥川浩平 on 2023/11/05.
//

import SwiftUI

struct ContentView: View {
    @StateObject var okashiDataList = OkashiData()
    @State var inputText = ""


    var body: some View {
        VStack {
            TextField("キーワード", text: $inputText,
                      prompt: Text("キーワードを入力してください"))
            .onSubmit {
                okashiDataList.searchOkashi(keyword: inputText)
            }
            .submitLabel(.search)
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
