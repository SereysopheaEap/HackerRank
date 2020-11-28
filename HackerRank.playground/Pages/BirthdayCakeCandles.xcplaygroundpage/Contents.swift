//: [Previous](@previous)

import Foundation

func birthdayCakeCandles(candles: [Int]) -> Int {
  if candles.isEmpty {
    return 0
  }
  
  var countTallest = 0
  var tallestCandle = candles[0]
  candles.forEach {
    if tallestCandle < $0 {
      tallestCandle = $0
      countTallest = 1
    } else if tallestCandle == $0 {
      countTallest += 1
    }
  }

  return countTallest
}

let test1 = [3, 2, 1, 3] // Pass 2
let test2 = [0, 0, 0]
let test3 = [3, 2, 1]
let test4 = [5, 5, 4, 6, 1]
let test5 = [0, 2, 1]
let test6 = [2, 2, 2, 1]

[test1, test2, test3, test4, test5, test6].forEach { (test) in
  let countTallest = birthdayCakeCandles(candles: test)
  print("Tallest candles \(test): \(countTallest)\n")
}
