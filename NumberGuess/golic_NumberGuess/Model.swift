//
//  Model.swift
//  golic_NumberGuess
//
//  Created by Benjamin Golic on 15.10.20.
//

import Foundation
class Model {
  var guesses = [Int]()
  var randomNumber = Int.random(in: 1..<99)
  
  func clearGuesses() {
    guesses.removeAll();
  }
  func newRandomNumber() {
    randomNumber = Int.random(in: 1..<99)
  }
}


