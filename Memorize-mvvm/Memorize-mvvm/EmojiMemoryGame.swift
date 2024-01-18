//
//  EmojiMemoryGame.swift
//  Memorize-mvvm
//
//  Created by yangtz on 2024/1/17.
//

import Foundation

// ViewModel

class EmojiMemoryGame: ObservableObject {
    static let emojis = ["🚚", "🚄", "✈️", "🚀", "🚞", "🚁", "🚂", "🛵", "🚖", "⛵️", "🚌", "🛴", "🚛", "🏎️", "🎸", "🥎", "🏂"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame(numberOfPairsOfCards: 4) {
            pairIndex in return emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    func choose(_ card: MemoryGame<String>.Card) {
        objectWillChange.send()
        model.choose(card)
    }
}
