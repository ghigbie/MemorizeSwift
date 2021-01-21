//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by George Higbie on 1/19/21.
//

import SwiftUI


struct EmojiMemoryGameView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach(viewModel.cards){ card in
                CardV(card: card).onTapGesture(perform: {viewModel.choose(card: card)})
            }
        }
            .padding()
    }
}

struct EmojiMemoryGameView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}
