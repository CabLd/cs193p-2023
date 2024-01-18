//
//  Memorize_mvvmApp.swift
//  Memorize-mvvm
//
//  Created by yangtz on 2024/1/17.
//

import SwiftUI

@main
struct Memorize_mvvmApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
