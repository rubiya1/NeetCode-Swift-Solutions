//
//  4. Permutation in String.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 24/12/24.
//
import Foundation

/* Summarized Algorithm:
     1    Store s1 in a Map:
            ◦ Create a map (s1_map) to store the frequency of characters in s1.
     2    Iterate Through s2:
            ◦ Use a sliding window approach to maintain a map (window_map) for the current characters in s2.
     3    Check for Match:
            ◦ Compare s1_map and window_map when the window size equals s1.length. If they match, return true.
     4    Minimize the Window:
            ◦ If the window size exceeds s1.length, shrink the window from the left:
                ▪ Remove the character at the start of the window from window_map.
                ▪ If its count becomes 0, remove the key entirely from window_map.
     5    Return false if No Match:
            ◦ If the loop finishes without finding a match, return false. */

func checkInclusion(_ s1: String, _ s2: String) -> Bool {
    guard s1.count <= s2.count else { return false }
    var map = [Character: Int]()
    let s2Array = Array(s2)
    s1.forEach { map[$0, default: 0] += 1 }
    
    var windowMap: [Character: Int] = [:]
    
    for (end, char) in s2Array.enumerated() {
        windowMap[char, default: 0] += 1
        
        if end >= s1.count {
            let start = s2Array[end - s1.count]
            windowMap[start, default: 0] -= 1
            windowMap = windowMap.filter { $0.value > 0 }

        }
        if windowMap == map {
            return true
        }
    }
    return false
}
    






