//
//  3. Min Cost to Connect All Points.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 08/01/25.
//

import Foundation


func minCostToConnectAllPoints(_ points: [[Int]]) -> Int {
    let n = points.count
    var minCost = 0
    var visited: Set<Int> = [], minHeap = [(Int, Int)]()
    minHeap.append((0, 0))
    
    while visited.count < n {
        let (cost, current) = minHeap.removeFirst()
        if visited.contains(current) { continue }
        
        visited.insert(current)
        minCost += cost
        
        for next in 0..<n {
            if !visited.contains(next) {
                let nextCost = abs(points[current][0] - points[next][0]) + abs(points[current][1] - points[next][1])
                minHeap.append((nextCost, next))
            }
        }
        minHeap.sort { $0.0 < $1.0 }
    }
    
    
    return minCost
}
