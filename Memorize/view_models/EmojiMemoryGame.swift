//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by George Higbie on 1/19/21.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject { //obserable object only works for classes
    //this could be named "game"
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🦀", "🦜"] //"🕍", "🐄", "🐛", "🐡", "🦑", "🐈", "🐳", "🐪", "🐫", "🐘"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count){pairIndex in return emojis[pairIndex]}
    }
    
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
    //MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
    
}
