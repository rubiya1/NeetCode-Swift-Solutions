//
//  3. Koko Eating Bananas.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 22/12/24.
//

import Foundation

func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
    guard !piles.isEmpty else { return 0 }
    var res = 0
    var low = 1, high = piles.max()!
    
    while low <= high {
        let mid = low + (high - low) / 2
        if canFish(piles, mid, h) {
            res = mid
            high = mid - 1
        } else {
            low = mid + 1
        }
      
    }
    return res
}

func canFish(_ piles: [Int], _ mid: Int, _ h: Int) -> Bool {
    let totalHour = piles.map { ($0 + mid - 1) / mid }.reduce(0, +)
    return totalHour <= h
   
}

