//
//  8. Maximum Product Subarray.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 01/01/25.
//

import Foundation

func maxProductSubarray(_ nums: [Int]) -> Int {
    guard !nums.isEmpty else { return 0 }
    var currentMax = nums.first!, currentMin = nums.first!, product = nums.first!
    
    for i in 1..<nums.count {
        let num = nums[i]
        let result = [currentMax * num, currentMin * num, num]
        currentMax = result.max() ?? currentMax
        currentMin = result.min() ?? currentMin
        product = max(currentMax, product)
    }
  
    return product
}
