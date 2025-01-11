//
//  5. Hand of Straights.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 10/01/25.
//

import Foundation

func isNStraightHand(_ hand: [Int], _ groupSize: Int) -> Bool {
    guard hand.count % groupSize == 0 else { return false }
   
    var countMap = [Int: Int]() // Count occurrences of each card
    for card in hand {
        countMap[card, default: 0] += 1
    }
      let sortedKeys = countMap.keys.sorted()
    for key in sortedKeys {
        guard let count = countMap[key], count > 0 else { continue }
        
        for i in 0..<groupSize {
            let currentCard = key + i
            if let currentCount = countMap[currentCard], currentCount >= count {
                countMap[currentCard] = currentCount - count
            } else {
                return false // Cannot form a valid group
            }
        }
    }
    return true
 }
