//
//  2. Jump Game.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 10/01/25.
//

import Foundation

func jumpGame(_ nums: [Int]) -> Bool {
    guard !nums.isEmpty else { return false }
    var maxReach = 0
    for i in 0..<nums.count {
        if i > maxReach { return false }
        maxReach = max(maxReach, i + nums[i])
        if maxReach >= nums.count - 1 { return true }
    }
    return maxReach >= nums.count - 1
}
