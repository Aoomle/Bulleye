//
//  RoundViews.swift
//  Bulleye
//
//  Created by Abdulmalik Muhammad on 22/01/2021.
//

import SwiftUI

struct RoundedImageViewStroke: View {
  let systemName: String
  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("TextColor"))
      .frame(width: 56.0, height: 56.0)
  }
}

struct RoundedImageViewFill: View {
  let systemName: String
  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("TextColor"))
      .frame(width: 56.0, height: 56.0)
  }
}

struct Preview: View {
  var body: some View {
    VStack(spacing: 10) {
      RoundedImageViewStroke(systemName: "arrow.counterclockwise")
      RoundedImageViewFill(systemName: "list.dash")
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
