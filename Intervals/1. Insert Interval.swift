//
//  1. Insert Interval.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 10/01/25.
//

import Foundation


func insertInterval(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
    guard !intervals.isEmpty else { return [newInterval] }
    var result = [[Int]]()
    var new = newInterval
    
    
    for interval in intervals {
        if interval[1] < new[0] {
            result.append(interval)
        }else if interval[0] > new[1] {
            result.append(new)
            new = interval
        } else {
            new[0] = min(new[0], interval[0])
            new[1] = max(new[1], interval[1])
        }
    }
    result.append(new)
    
    return result
}
