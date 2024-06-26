//
//  EmojiWrapper.swift
//  swiftui-emoji-keyboard
//
//  Created by dongnguyen on 26/6/24.
//

import Foundation
import UIKit
import EmojiPicker

class ViewController: UIViewController {
    
    private lazy var emojiButton: UIButton = {
        let button = UIButton()
        button.setTitle("😃", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 70)
        button.addTarget(self, action: #selector(openEmojiPickerModule), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.red
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .white
        view.addSubview(emojiButton)
        
        NSLayoutConstraint.activate([
            emojiButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emojiButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            emojiButton.heightAnchor.constraint(equalToConstant: 80),
            emojiButton.widthAnchor.constraint(equalToConstant: 80)
        ])
    }
    
    @objc private func openEmojiPickerModule(sender: UIButton) {
        let viewController = EmojiPickerViewController()
        viewController.sourceView = sender
        viewController.delegate = self
        
        /// # Optional parameters
        viewController.selectedEmojiCategoryTintColor = .systemRed
        viewController.arrowDirection = .up
        viewController.horizontalInset = 16
        viewController.isDismissedAfterChoosing = true
        viewController.customHeight = 300
        viewController.feedbackGeneratorStyle = .soft
        
        present(viewController, animated: true)
    }
    
}

// MARK: - EmojiPickerDelegate
extension ViewController: EmojiPickerDelegate {
    func didGetEmoji(emoji: String) {
        emojiButton.setTitle(emoji, for: .normal)
    }
}

