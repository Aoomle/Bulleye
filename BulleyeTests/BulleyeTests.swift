//
//  BulleyeTests.swift
//  BulleyeTests
//
//  Created by Abdulmalik Muhammad on 15/01/2021.
//

import XCTest
@testable import Bulleye

class BulleyeTests: XCTestCase {
  
  var game: Game!
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    game = Game()
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    game = nil
  }
  
  func testExample() throws {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCTAssertEqual(self.game.points(sliderValue: 50), 999)
  }
  
  func testScorePositive() {
    let guess = self.game.target + 5
    let score = game.points(sliderValue: guess)
    XCTAssertEqual(score, 95)
  }
  
  func testScoreNegative() {
    let guess = self.game.target - 5
    let score = game.points(sliderValue: guess)
    XCTAssertEqual(score, 95)
  }
  
}
