//
//  5. Minimum Window Substring.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 24/12/24.
//

import Foundation

func minWindow(_ s: String, _ t: String) -> String {
    let sArray = Array(s)  // Convert `s` into an array of characters
    let tFrequency = t.reduce(into: [Character: Int]()) { $0[$1, default: 0] += 1 }
    var windowFrequency = [Character: Int]()
    
    var left = 0
    var result = (minLength: Int.max, start: 0)  // Tuple to store the result window

    var matchedCount = 0

    for right in 0..<sArray.count {
        let char = sArray[right]
        windowFrequency[char, default: 0] += 1

        // Check if the current character satisfies its frequency requirement
        if let targetCount = tFrequency[char], windowFrequency[char] == targetCount {
            matchedCount += 1
        }

        // Shrink the window to minimize the valid substring
        while matchedCount == tFrequency.count {
            let currentLength = right - left + 1
            if currentLength < result.minLength {
                result = (minLength: currentLength, start: left)
            }

            let leftChar = sArray[left]
            windowFrequency[leftChar, default: 0] -= 1
            if let targetCount = tFrequency[leftChar], windowFrequency[leftChar]! < targetCount {
                matchedCount -= 1
            }

            left += 1
        }
    }

    // If no valid window was found, return an empty string
    guard result.minLength != Int.max else { return "" }
    return String(sArray[result.start..<result.start + result.minLength])
}


func minimumWindowSubstring(_ s: String, _ t: String) -> String {
    let tFrequency = t.reduce(into: [Character: Int]()) { $0[$1, default: 0] += 1 }
    var windowFrequency: [Character: Int] = [:]
    var left = 0, matchedCount = 0
    
    let sArray = Array(s)
    var result = (start: 0, length: Int.max)
    
    for right in 0..<sArray.count {
        let char = sArray[right]
        windowFrequency[char, default: 0] += 1
        
        if let targetCount = tFrequency[char], windowFrequency[char] == targetCount {
            matchedCount += 1
        }
        
        while matchedCount == tFrequency.count {
            let windowLength = right - left + 1
            if windowLength < result.length {
                result = (start: left, length: windowLength)
            }
            
            let leftChar = sArray[left]
            windowFrequency[leftChar, default: 0] -= 1
            
        if let targetCount = tFrequency[leftChar], windowFrequency[leftChar]! < targetCount {
                matchedCount -= 1
        }
            left += 1
            
        }
    }
    guard result.length != Int.max else { return "" }

    return  String(sArray[result.start..<result.start + result.length])

}
