//
//  3. Non-overlapping Intervals.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 10/01/25.
//

import Foundation


func nonOverlappingIntervals(_ intervals: [[Int]]) -> Int {
    let sortedIntervals = intervals.sorted { $0[0] < $1[0] }
    var nonOverlapCount = 0
    var prevEnd = sortedIntervals[0][1]
    
    for interval in sortedIntervals[1...] {
        if interval[0] >= prevEnd {
            nonOverlapCount += 1
            prevEnd = interval[1]
        }
    }
    
    return intervals.count - nonOverlapCount
}
