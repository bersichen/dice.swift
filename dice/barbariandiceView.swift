//
//  BarbarianDiceView.swift
//  dice
//
//  Created by Michael Nikitochkin on 28.02.26.
//

import SwiftUI

struct BarbarianDiceView: View {
  @Binding var numberOfDots:  Int

  let diceColor: [Int: Color] = [
    1: .black,
    2: .yellow,
    3: .black,
    4: .green,
    5: .black,
    6: .blue
  ]

  let diceImage: [Int: String] = [
    1: "sailboat",
    2: "house",
    3: "sailboat",
    4: "house",
    5: "sailboat",
    6: "house"
  ]

  var body: some View {

    ZStack{
      diceColor[numberOfDots, default: .gray]
        .ignoresSafeArea()

      VStack {
        Image(systemName: diceImage[numberOfDots, default: "questionmark"])
          .resizable()
          .frame(width: 100, height: 100)
          .foregroundColor(.white)
      }
    }
  }
}
