//
//  MemoryGame.swift
//  Memorize
//
//  Created by George Higbie on 1/19/21.
//

import SwiftUI

struct MemoryGame <CardContent>{ //The angle brackets is a nice example of "dont care" type
    var cards: Array<Card>
    
    func choose(card: Card){
        print("Card chosen: \(card)")
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent){
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards{
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
        cards.shuffle()
    }
    
    struct Card: Identifiable {
        var inFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent //The cardContent is a don't care type
        var id: Int //is required when using identifiable
    }
}
