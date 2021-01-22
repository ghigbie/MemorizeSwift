//
//  Card.swift
//  Memorize
//
//  Created by George Higbie on 1/19/21.
//

import SwiftUI

struct CardV: View {
    var card: MemoryGame<String>.Card
    
    var body: some View{
        GeometryReader(content: {geometry in
        ZStack{
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(lineWidth: edgeLineWidth)
                    .foregroundColor(Color.blue)
                Text(card.content).font(Font.system(size: min(geometry.size.width, geometry.size.height) * fontScaleFactor))
           }else{
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(Color.blue)
            }
        }//zstack
       // .aspectRatio(0.75, contentMode: .fit)//make them a smaller size
        .frame(width: 100, height: 125)
        }) //geometry reader
    }
    
    // MARK: - Drawing Constants
    
    let cornerRadius: CGFloat = 10.0
    let edgeLineWidth: CGFloat = 3
    let fontScaleFactor: CGFloat = 0.75
    
    
}

//struct CardV_Previews: PreviewProvider {
//    static var previews: some View {
//        let card = CardV(content: "🎃", id: 1)
//        CardV(card: card)
//    }
//}
