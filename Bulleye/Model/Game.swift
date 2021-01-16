//
//  Game.swift
//  Bulleye
//
//  Created by Abdulmalik Muhammad on 15/01/2021.
//

import Foundation

struct Game {
  let target = Int.random(in: 1...100)
  var score = 0
  var round = 1
  
  func points(sliderValue: Int) -> Int {
    100 - abs(sliderValue - target)
  }
}
