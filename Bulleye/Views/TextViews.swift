//
//  TextViews.swift
//  Bulleye
//
//  Created by Abdulmalik Muhammad on 21/01/2021.
//

import SwiftUI

struct InstructionText: View {
  var text: String
  
  var body: some View {
    Text(text.uppercased())
      .bold()
      .kerning(2.0)
      .multilineTextAlignment(.center)
      .lineSpacing(4.0)
      .font(.footnote)
      .foregroundColor(.init("TextColor"))
  }
}

struct BigNumberText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .kerning(-1.0)
      .foregroundColor(.init("TextColor"))
      .font(.largeTitle)
      .fontWeight(.black)
  }
}

struct SliderLabelText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .foregroundColor(.init("TextColor"))
      .bold()
      .frame(width: 35.0)
  }
}

struct LabelText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .bold()
      .kerning(1.5)
      .font(.caption)
      .foregroundColor(.init("TextColor"))
  }
}

struct InstructionText_Preview: PreviewProvider {
  static var previews: some View {
    VStack {
      InstructionText(text: "Insturctions")
      BigNumberText(text: "999")
      LabelText(text: "SCORE")
    }
  }
}
