//
//  ContentView.swift
//  Bulleye
//
//  Created by Abdulmalik Muhammad on 13/01/2021.
//

import SwiftUI

struct ContentView: View {
  
  @State private var alertIsVisible = false
  @State private var sliderValue = 50.0
  @State private var game = Game()
  
  var body: some View {
    ZStack {
      BackgroundView(game: $game)
      VStack {
        InstructionView(game: $game)
        SliderView(sliderValue: $sliderValue)
        HitMeButton(alertIsVisible: $alertIsVisible, game: $game, sliderValue: $sliderValue)
      }
    }
  }
}


struct InstructionView: View {
  @Binding var game: Game
  
  var body: some View {
    VStack {
      InstructionText(text: "🎯🎯🎯\nPut the bulleye as close as you can to")
        .padding(.leading, 30.0)
        .padding(.trailing, 30.0)
      BigNumberText(text: "\(game.target)")
    }
  }
}


struct SliderView: View {
  @Binding var sliderValue: Double
  
  var body: some View {
    VStack {
      HStack {
        SliderLabelText(text: "1")
        Slider(value: $sliderValue, in: 1.0...100.0)
        SliderLabelText(text: "100")
      }
      .padding()
    }
  }
}

struct HitMeButton: View {
  @Binding var alertIsVisible: Bool
  @Binding var game: Game
  @Binding var sliderValue: Double
  
  var body: some View {
    VStack {
      Button(action: {
        alertIsVisible = true
      }) {
        Text("Hit Me".uppercased())
          .foregroundColor(.init("TextColor"))
          .bold()
          .font(.title3)
      }
      .padding(20.0)
      .background(
        ZStack {
          Color("ButtonColor")
          LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
        }
      )
      .foregroundColor(.white)
      .cornerRadius(15)
      .overlay(
        RoundedRectangle(cornerRadius: 15, style: .continuous)
          .strokeBorder(Color.white, lineWidth: 2.0)
      )
      .alert(isPresented: $alertIsVisible, content: {
        let roundedValue = Int(sliderValue.rounded())
        return Alert(title: Text("Hello There!"), message: Text("The slider value is:\(roundedValue)\n" + "You scored \(game.points(sliderValue: roundedValue)) points this round"), dismissButton: .default(Text("Awesome!")))
      })
    }
  }
}



struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      ContentView()
        .previewDevice("iPhone 8")
    }
    ContentView()
      .previewLayout(.fixed(width: 568, height: 320))
  }
}

