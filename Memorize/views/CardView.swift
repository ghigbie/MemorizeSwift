//
//  CardView.swift
//  Memorize
//
//  Created by George Higbie on 1/19/21.
//

import SwiftUI

struct CardView: View {
    var emoji = "🐝"
    var isFaceUp = true
    var primaryColor = Color.blue
    let rounding: CGFloat = 10.0
    
    
    var body: some View {
        ZStack{
            if isFaceUp {
                RoundedRectangle(cornerRadius: rounding).fill(Color.white)
                RoundedRectangle(cornerRadius: rounding).stroke(lineWidth: 3).foregroundColor(primaryColor)
                Text(emoji).font(Font.largeTitle)
           }else{
                RoundedRectangle(cornerRadius: rounding).fill(primaryColor)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
