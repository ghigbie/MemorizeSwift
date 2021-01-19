//
//  MemoryGame.swift
//  Memorize
//
//  Created by George Higbie on 1/19/21.
//

import Foundation

struct MemoryGame <CardContent>{ //The angle brackets is a nice example of "dont care" type
    var cards: Array<Card>
    
    func choose(card: Card){
        print("Card chosen: \(card)")
    }
    
    struct Card {
        var inFaceUp: Bool
        var isMatched: Bool
        var content: CardContent //The cardContent is a don't care type
    }
}
