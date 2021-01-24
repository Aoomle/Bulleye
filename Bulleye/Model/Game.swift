//
//  Game.swift
//  Bulleye
//
//  Created by Abdulmalik Muhammad on 15/01/2021.
//

import Foundation

struct Game {
  var target = Int.random(in: 1...100)
  var score = 0
  var round = 1
  
  func points(sliderValue: Int) -> Int {
    let difference = abs (sliderValue - target)
    let bounus: Int
    if difference == 0 {
      bounus = 100
    } else if difference == 2 {
      bounus = 50
    } else {
      bounus = 0
    }
    
    return 100 - difference + bounus
  }
  
  mutating func startNewRound(points: Int)  {
    score += points
    round = round + 1
    target = Int.random(in: 1...100)
  }
  
  func testScoreExact() {
    
  }
}
