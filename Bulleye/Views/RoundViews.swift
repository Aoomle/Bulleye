//
//  RoundViews.swift
//  Bulleye
//
//  Created by Abdulmalik Muhammad on 22/01/2021.
//

import SwiftUI

struct RoundedImageViewStroked: View {
  let systemName: String
  
  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("TextColor"))
      .frame(width: 56.0, height: 56.0)
      .overlay(
        Circle()
          .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
      )
  }
}

struct RoundedImageViewFilled: View {
  let systemName: String
  
  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("ButtonFilledTextColor"))
      .frame(width: 56.0, height: 56.0)
      .background(
        Circle().fill(Color("ButtonFilledBackgroundColor"))
      )
  }
}

struct RoundRectTextView: View {
  let text: String
  
  var body: some View {
    Text(text)
      .kerning(-0.2)
      .font(.title3)
      .foregroundColor(Color("TextColor"))
      .frame(width: 68.0, height: 56.0)
      .overlay(
        RoundedRectangle(cornerRadius: 21.0)
          .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
      )
  }
}

struct Preview: View {
  var body: some View {
    VStack(spacing: 10) {
      RoundedImageViewStroked(systemName: "arrow.counterclockwise")
      RoundedImageViewFilled(systemName: "list.dash")
      RoundRectTextView(text: "3")
    }
  }
}

struct RoundViews_Previews: PreviewProvider {
  static var previews: some View {
    Preview()
    Preview()
      .preferredColorScheme(.dark)
  }
}
