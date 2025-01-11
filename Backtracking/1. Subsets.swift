//
//  1. Subsets.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 29/12/24.
//

import Foundation


func subsets(_ nums: [Int]) -> [[Int]] {
    var result: [[Int]] = []
    
    func backtrack(_ current: [Int], _ index: Int) {
        if index == nums.count {
            result.append(current)
            return
        }
        // Exclude the current number
        backtrack(current, index + 1)
        
        // Include the current number
        backtrack(current + [nums[index]], index + 1)
    }
    
    backtrack([], 0)
    return result
}

