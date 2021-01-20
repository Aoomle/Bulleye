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
    ZStack {
      Color("BackgroundColor")
        .edgesIgnoringSafeArea(.all)
      VStack {
        Text("🎯🎯🎯\nPut the bulleye as close as you can to".uppercased())
          .bold()
          .kerning(2.0)
          .multilineTextAlignment(.center)
          .lineSpacing(4.0)
          .font(.footnote)
          .foregroundColor(.init("TextColor"))
        
        Text("\(game.target)")
          .kerning(-1.0)
          .foregroundColor(.init("TextColor"))
          .font(.largeTitle)
          .fontWeight(.black)
        
        HStack {
          Text("1")
            .foregroundColor(.init("TextColor"))
            .bold()
          Slider(value: $sliderValue, in: 1.0...100.0)
          Text("100")
            .foregroundColor(.init("TextColor"))
            .bold()
        }
        .padding()
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
        .alert(isPresented: $alertIsVisible, content: {
          let roundedValue = Int(sliderValue.rounded())
          return Alert(title: Text("Hello There!"), message: Text("The slider value is:\(roundedValue)\n" + "You scored \(game.points(sliderValue: roundedValue)) points this round"), dismissButton: .default(Text("Awesome!")))
        })

      }
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
