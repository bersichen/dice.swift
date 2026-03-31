//
//  ContentView.swift
//  dice
//
//  Created by Michael Nikitochkin on 27.02.26.
//

import SwiftUI

struct ContentView: View {
  @State var yellowNumberOfDots: Int = 1
  @State var redNumberOfDots: Int = 1
  @State var barbarianNumberOfDots: Int = 1
  var body: some View {
      HStack{
        YellowDiceView(numberOfDots: $yellowNumberOfDots)
        RedDiceView(numberOfDots: $redNumberOfDots)
        BarbarianDiceView(numberOfDots: $barbarianNumberOfDots)
      }

      Button("ROLL") {
        withAnimation{
          yellowNumberOfDots = Int.random(in: 1...6)
          redNumberOfDots = Int.random(in: 1...6)
          barbarianNumberOfDots = Int.random(in: 1...6)
        }
      }
      .buttonStyle(.bordered)
    }
}

#Preview {
    ContentView()
}
