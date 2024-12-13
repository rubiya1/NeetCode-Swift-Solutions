//
//  7. Product of Array Except Self.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 13/12/24.
//

import Foundation

func productExceptSelf(_ nums: [Int]) -> [Int] {
    var prefix = Array(repeating: 1, count: nums.count)
    for i in 1..<nums.count {
        prefix[i] = prefix[i-1] * nums[i-1]
    }
    
    var suffix = 1
    for i in (0..<nums.count).reversed() {
        prefix[i] *= suffix
        suffix *= nums[i]
    }
    return prefix
}
