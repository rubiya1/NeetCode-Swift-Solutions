//
//  4. Container With Most Water.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 14/12/24.
//

import Foundation

func maxArea(_ height: [Int]) -> Int {
    var maxArea = 0
    var left = 0, right = height.count - 1
    
    while left < right {
       let currentArea = min(height[left], height[right]) * (right - left)
        
        if height[left] < height[right] {
            left += 1
        } else {
            right -= 1
        }
        maxArea = max(currentArea, maxArea)
        
    }
    return maxArea
}
