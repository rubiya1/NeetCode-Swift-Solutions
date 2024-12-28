//
//  2. Longest Substring Without Repeating Characters.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 24/12/24.
//

import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    var map = [Character: Int](), start = 0, maxLength: Int = 0
    for (end, char) in s.enumerated() {
        if let lastIndex = map[char] {
            start = max(start, lastIndex + 1) // Make sure start should not move backward
        }
        map[char] = end
        maxLength = max(maxLength, end - start + 1)
    }
    return maxLength
}
