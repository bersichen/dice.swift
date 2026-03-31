//
//  RedDiceView.swift
//  dice
//
//  Created by Michael Nikitochkin on 28.02.26.
//

import SwiftUI

struct RedDiceView: View {
    @Binding var numberOfDots:  Int


    var body: some View {
      ZStack{
        Color.red
          .ignoresSafeArea()
        VStack {
          Image (systemName: "die.face.\(numberOfDots)")
            .resizable()
            .frame(width: 100, height: 100)
            .foregroundColor(.white)
        }
      }
    }
  }

