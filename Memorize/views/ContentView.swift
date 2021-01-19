//
//  ContentView.swift
//  Memorize
//
//  Created by George Higbie on 1/19/21.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4){ index in
                CardView(emoji: "🦜", isFaceUp: true, primaryColor: Color.red)
            }
        }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
