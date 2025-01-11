//
//  4. House Robber II.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 31/12/24.
//

import Foundation

func houseRobberII(_ nums: [Int]) -> Int {
    guard nums.count > 1 else { return nums.first ?? 0 }
    
    func robLinear(_ customNums:[Int]) -> Int {
        var prev2 = 0,  prev1 = 0
        for num in customNums {
            let current = max(prev2 + num, prev1)
            prev2 = prev1
            prev1 = current
        }
        return prev1
    }
    
    let robFirst = robLinear(Array(nums[0..<nums.count-1]))
    let robLast = robLinear(Array(nums[1..<nums.count]))
    return max(robFirst, robLast)
}
