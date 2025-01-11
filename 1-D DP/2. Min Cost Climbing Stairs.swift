//
//  2. Min Cost Climbing Stairs.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 31/12/24.
//

import Foundation


func minCostClimbingStairs(_ cost: [Int]) -> Int {
    var prev2 = cost[0], prev1 = cost[1]
    for i in 2..<cost.count {
        (prev2, prev1) = (prev1, min(prev2, prev1) + cost[i])
    }
    return min(prev2, prev1)
}
