//
//  3. House Robber.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 31/12/24.
//

import Foundation


func houseRobber(_ nums: [Int]) -> Int {
   var prev2 = 0, prev1 = 0
    
    for num in nums {
        let current = max(prev2 + num, prev1)
        prev2 = prev1
        prev1 = current
    }
    return prev1
}

