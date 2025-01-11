//
//  6. Minimum Interval to Include Each Query.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 10/01/25.
//

import Foundation


func minInterval(_ intervals: [[Int]], _ queries: [Int]) -> [Int] {
    // Sort intervals by start time
    let sortedIntervals = intervals.sorted { $0[0] < $1[0] }
    
    // Create queries with original indices and sort them
    let sortedQueries = queries.enumerated().sorted { $0.1 < $1.1 }
    
    var result = Array(repeating: -1, count: queries.count)
    var pq = [(size: Int, end: Int)]()  // Priority Queue: (interval size, end time)
    var intervalIdx = 0
    
    for (queryIndex, queryValue) in sortedQueries {
        // Add all intervals that start before or at current query
        while intervalIdx < sortedIntervals.count && sortedIntervals[intervalIdx][0] <= queryValue {
            let interval = sortedIntervals[intervalIdx]
            pq.append((interval[1] - interval[0] + 1, interval[1]))
            pq.sort { $0.size < $1.size }  // Sort by size
            intervalIdx += 1
        }
        
        // Remove all intervals that end before current query
        while !pq.isEmpty && pq[0].end < queryValue {
            pq.removeFirst()
        }
        
        // If we have any valid interval, smallest size is our answer
        if !pq.isEmpty {
            result[queryIndex] = pq[0].size
        }
    }
    
    return result
}

