//
//  Shape.swift
//  Bulleye
//
//  Created by Abdulmalik Muhammad on 22/01/2021.
//

import SwiftUI

struct Shape: View {
    var body: some View {
      VStack {
        Circle()
          .fill(Color.blue)
          .frame(width: 200, height: 100)
        RoundedRectangle(cornerRadius: 22)
          .fill(Color.blue)
          .frame(width: 200, height: 100)
        Capsule()
          .fill(Color.blue)
          .frame(width: 200, height: 100)
        Ellipse()
          .fill(Color.blue)
          .frame(width: 200, height: 100)
      }
      .background(Color.green)
    }
}

struct Shape_Previews: PreviewProvider {
    static var previews: some View {
        Shape()
    }
}
