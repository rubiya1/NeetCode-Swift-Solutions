//
//  3. 424. Longest Repeating Character Replacement.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 24/12/24.
//

import Foundation

func longestRepeatingCharacterReplacement(_ s: String, _ k: Int) -> Int {
    var start = 0, maxFrequency = 0, maxLength = 0
    var map: [Character: Int] = [:]
    let input = Array(s)
    
    for (idx, ch) in input.enumerated() {
        map[ch, default:0] += 1
        maxFrequency = max(maxFrequency, map[ch]!)
        
        let currWindow = idx - start + 1
        
        if currWindow - maxFrequency  > k {
            map[input[start]]! -= 1
            start += 1
        }
        maxLength = max(maxLength, idx - start + 1)
    }
    
    return maxLength
}
