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
          .stroke(Color("TextColor"))
      )
  }
}

struct RoundedImageViewFilled: View {
  let systemName: String
  
  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("TextColor"))
      .frame(width: 56.0, height: 56.0)
      .overlay(
        Circle()
          .stroke(Color("TextColor"))
      )
  }
}

struct Preview: View {
  var body: some View {
    VStack(spacing: 10) {
      RoundedImageViewStroked(systemName: "arrow.counterclockwise")
      RoundedImageViewFilled(systemName: "list.dash")
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
