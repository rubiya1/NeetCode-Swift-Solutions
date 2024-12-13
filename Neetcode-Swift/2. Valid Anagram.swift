//
//  ValidAnagram.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 12/12/24.
//

import Foundation


// https://leetcode.com/problems/valid-anagram/description/

func isAnagram(_ s: String, _ t: String) -> Bool {
    guard s.count == t.count else { return false }
    var map = [Character: Int]()
    
    for (charS, charT) in zip(s, t) {
        map[charS, default: 0] += 1
        map[charT, default: 0] -= 1
    }
    return map.values.allSatisfy { $0 == 0 }
}
