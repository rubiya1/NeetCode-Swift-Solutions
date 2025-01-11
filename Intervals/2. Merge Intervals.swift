//
//  2. Merge Intervals.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 10/01/25.
//

import Foundation


func mergeIntervals(_ intervals: [[Int]]) -> [[Int]] {
    var result = [[Int]]()
    var sorted = intervals.sorted { $0[0] < $1[0] }
    var current = sorted[0]
    
    for interval in sorted[1...] {
        if current[1] >= interval[0] {
            current[1] = max(current[1], interval[1])
        } else {
            result.append(current)
            current = interval
        }
    }
    result.append(current)
    return result
}
