//
//  3. Jump Game II.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 10/01/25.
//

import Foundation

func jumpGameII(_ nums: [Int]) -> Int {
    guard !nums.isEmpty else { return 0 }
    var (step, currFar, currEnd) = (0, 0, 0)
    
    nums.enumerated().dropLast().forEach { (index, num) in
        currFar = max(currFar, index + num)
        if index == currEnd {
            step += 1
            currEnd = currFar
        }
    }
    
    return step
}
