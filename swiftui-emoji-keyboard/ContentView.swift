//
//  ContentView.swift
//  swiftui-emoji-keyboard
//
//  Created by dongnguyen on 26/6/24.
//

import SwiftUI

struct ContentView: View {
    @State var emoji: String = "💖"
    @State var isShowPicker: Bool = false

    var body: some View {
        VStack {
            Text("Hello, world!")
            DNEmojiView(emoji: $emoji, isPresent: $isShowPicker)
                .frame(width: 120, height: 120)
                .background(Color.green)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
