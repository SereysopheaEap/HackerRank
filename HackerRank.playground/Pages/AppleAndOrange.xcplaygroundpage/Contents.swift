//: [Previous](@previous)

import Foundation

//https://www.hackerrank.com/challenges/apple-and-orange/problem?isFullScreen=false

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) {
  
  let RANK = 100_000
  
  func isValidRank(_ v: Int) -> Bool {
    return v >= 1 && v <= RANK
  }
  
  func isCorrectDistance(_ position: Int) -> Bool {
    return -RANK <= position && position <= RANK
  }
  
  func countEachItems(_ items: [Int], startPoint: Int, inRank start: Int, to end: Int) -> Int {
    var counter = 0
    items.forEach {
      if isCorrectDistance($0) {
        let postion = startPoint + $0
        if postion >= start && postion <= end {
          counter += 1
        }
      }
    }
    return counter
  }
  
  let isValid = isValidRank(s) && isValidRank(t) && isValidRank(a) && isValidRank(b)
  
  if isValid && isValidRank(apples.count) {
    let countApple = countEachItems(apples, startPoint: a, inRank: s, to: t)
    print(countApple)
  }
  
  if isValid && isValidRank(oranges.count) {
    let countOrange = countEachItems(oranges, startPoint: b, inRank: s, to: t)
    print(countOrange)
  }
}



countApplesAndOranges(s: 7, t: 10, a: 4, b: 12, apples: [2, 3, -4], oranges: [3, -2, 4])
print("==============")
countApplesAndOranges(s: 7, t: 11, a: 5, b: 15, apples: [-2, 2, 1], oranges: [5, -6])
print("==============")
countApplesAndOranges(s: 2, t: 3, a: 1, b: 5, apples: [2], oranges: [-2])

