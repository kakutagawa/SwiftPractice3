//
//  BackgroundView.swift
//  MyMusic3
//
//  Created by 芥川浩平 on 2023/10/30.
//

import SwiftUI

struct BackgroundView: View {
    let imageName: String

    var body: some View {
        Image(imageName)
            .resizable()
            .ignoresSafeArea()
            .scaledToFill()
    }
}

#Preview {
    BackgroundView(imageName: "background")
}
