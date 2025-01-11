//
//  1. Climbing Stairs.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 31/12/24.
//

import Foundation
/*
 State: Define what the subproblem represents.
 Base Case: Solve the smallest subproblems.
 Transition: Relate larger subproblems to smaller ones.
 Solve: Compute the solution iteratively or recursively.
*/

func climbingStairs(_ n: Int) -> Int {
    guard n >= 0 else { return 0 }
    var dp = [1, 1]
    for i in 2...n {
        dp.append(dp[i-1] + dp[i-2])
    }
    return dp[n]
    
}
