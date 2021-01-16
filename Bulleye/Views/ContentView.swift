//
//  ContentView.swift
//  Bulleye
//
//  Created by Abdulmalik Muhammad on 13/01/2021.
//

import SwiftUI

struct ContentView: View {
  
@State private var alertIsVisible = false
@State private var sliderValue = 10.0
@State private var game = Game()
  
  var body: some View {
    VStack {
      Text("🎯🎯🎯\nPUT THE BULLEYE AS CLOSE AS YOU CAN TO")
        .bold()
        .kerning(2.0)
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
      
      Text("\(game.target)")
        .kerning(-1.0)
        .font(.largeTitle)
        .fontWeight(.black)
      
      HStack {
        Text("1")
          .bold()
        Slider(value: $sliderValue, in: 1.0...100.0)
        Text("100")
          .bold()
      }
      
      Button(action: {
        alertIsVisible = true
      }) {
        Text("Hit Me")
      }.alert(isPresented: $alertIsVisible, content: {
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
