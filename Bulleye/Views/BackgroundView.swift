//
//  BackgroundView.swift
//  Bulleye
//
//  Created by Abdulmalik Muhammad on 23/01/2021.
//

import SwiftUI

struct BackgroundView: View {
  @Binding var game: Game
  
  var body: some View {
    VStack {
      TopView(game: $game)
      Spacer()
      BottomView(game: $game)
    }.padding()
    .background(
      RingView()
    )
  }
}


struct TopView: View {
  @Binding var game: Game
  
  var body: some View {
    HStack {
      Button(action: {
        game.restart()
      }) {
        RoundedImageViewStroked(systemName: "arrow.counterclockwise")
      }
      Spacer()
      RoundedImageViewFilled(systemName: "list.dash")
    }
  }
}


struct NumberView: View {
  let title: String
  let text: String
  
  var body: some View {
    VStack(spacing: 5) {
      LabelText(text: title.uppercased())
      RoundRectTextView(text: text)
    }
  }
}


struct BottomView: View {
  @Binding var game: Game
  
  var body: some View {
    HStack {
      NumberView(title: "Score", text: "\(game.score)")
      
      Spacer()
      NumberView(title: "Round", text: "\(game.round)")
    }
  }
}


struct RingView: View {
  var body: some View {
    ZStack {
      Color("BackgroundColor")
        .edgesIgnoringSafeArea(.all)
      
      ForEach(1..<6) { ring in
        let size = CGFloat(ring * 100)
        Circle()
          .stroke(lineWidth: 20.0)
          .fill(
            RadialGradient(gradient: Gradient(colors: [Color("RingsColor").opacity(0.3 * 0.8),Color("RingsColor").opacity(0)]), center: .center, startRadius: 100, endRadius: 300)
          )
          .frame(width: size, height: size)
     
        
      }
    }
  }
}

struct BackgroundView_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      BackgroundView(game: .constant(Game()))
    }
  }
}
