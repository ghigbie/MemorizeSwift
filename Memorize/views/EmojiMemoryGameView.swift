//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by George Higbie on 1/19/21.
//

import SwiftUI


struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        Grid(viewModel.cards){ card in  //this grid is a combination of an hstack and a for each
                CardV(card: card).onTapGesture(perform: {viewModel.choose(card: card)})
            }
        }
        .padding()
    }


struct EmojiMemoryGameView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}
