//
//  ContentView.swift
//  MyMap3
//
//  Created by 芥川浩平 on 2023/10/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView(searchKey: "羽田空港")
        }
    }
}

#Preview {
    ContentView()
}
