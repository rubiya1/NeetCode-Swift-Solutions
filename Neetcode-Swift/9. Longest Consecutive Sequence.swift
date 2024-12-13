//
//  9. Longest Consecutive Sequence.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 13/12/24.
//

import Foundation

func longestConsecutiveSequence(_ nums: [Int]) -> Int {
    let seen = Set(nums)
    var maxLength: Int = 0
    
    for num in nums {
        if !seen.contains(num - 1) {
            var currLen: Int = 1
            var current: Int = num
            
            while seen.contains(current + 1) {
                currLen += 1
                current += 1
            }
            maxLength = max(maxLength, currLen)
        }
        
    }
    
    return maxLength
}
