//
//  DNEmojiView.swift
//  swiftui-emoji-keyboard
//
//  Created by dongnguyen on 26/6/24.
//

import EmojiPicker
import Foundation
import SwiftUI
import UIKit

struct DNEmojiView: UIViewControllerRepresentable {
    // Các hàm cần thiết cho UIViewControllerRepresentable
    @Binding var emoji: String
    @Binding var isPresent: Bool

    func makeUIViewController(context: Context) -> ViewController {
        return ViewController()
    }

    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        // Cập nhật view controller nếu cần
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }

    class Coordinator: NSObject {
        func didGetEmoji(emoji: String) {}

        var parent: DNEmojiView

        init(parent: DNEmojiView) {
            self.parent = parent
        }
    }
}
