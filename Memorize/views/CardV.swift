//
//  Card.swift
//  Memorize
//
//  Created by George Higbie on 1/19/21.
//

import SwiftUI

struct CardV: View {
    var card: MemoryGame<String>.Card
    let rounding: CGFloat = 10.0
    
    var body: some View {
        ZStack{
            if card.inFaceUp {
                RoundedRectangle(cornerRadius: rounding)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: rounding)
                    .stroke(lineWidth: 3)
                    .foregroundColor(Color.blue)
                Text(card.content).font(Font.largeTitle)
           }else{
                RoundedRectangle(cornerRadius: rounding)
                    .fill(Color.blue)
            }
        }//zstack
        .frame(width: 100,  height:100) //make them a smaller size
        
    }
}

//struct CardV_Previews: PreviewProvider {
//    static var previews: some View {
//        let card = CardV(content: "🎃", id: 1)
//        CardV(card: card)
//    }
//}
