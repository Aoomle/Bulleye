//
//  ContentView.swift
//  Bulleye
//
//  Created by Abdulmalik Muhammad on 13/01/2021.
//

import SwiftUI

struct ContentView: View {
  
@State private var alertIsVisible = false
  
  var body: some View {
    VStack {
      Text("🎯🎯🎯\nPUT THE BULLEYE AS CLOSE AS YOU CAN TO")
        .bold()
        .kerning(2.0)
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
      
      Text("89")
        .kerning(-1.0)
        .font(.largeTitle)
        .fontWeight(.black)
      
      HStack {
        Text("1")
          .bold()
        Slider(value: .constant(50), in: 1.0...100.0)
        Text("100")
          .bold()
      }
      
      Button(action: {
        self.alertIsVisible = true
      }) {
        Text("Hit Me")
      }.alert(isPresented: $alertIsVisible, content: {
        return Alert(title: Text("Hello There!"), message: Text("This is my I dont know number of pop-up"), dismissButton: .default(Text("Awesome!")))
      })

    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .previewLayout(.fixed(width: 568, height: 320))
  }
}
