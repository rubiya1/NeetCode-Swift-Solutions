//
//  5. Trapping Rain Water.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 14/12/24.
//

import Foundation

func trappingRainWater(_ height: [Int]) -> Int {
    guard !height.isEmpty else { return 0 }
   
    var maxLeft = height[0]
    var maxRight = height[height.count - 1]
    
    var water = 0, left = 0, right = height.count - 1
    
    while left < right {
        if height[left] <= height[right] {
            
            if height[left] >= maxLeft {
                maxLeft = height[left] // Update left max
            } else {
                water += maxLeft - height[left] // Calculate trapped water
            }
            left += 1
        } else  {
            
            if height[right] >= maxRight {
                maxRight = height[right] // Update right max
            } else {
                water += maxRight - height[right] // Calculate trapped water
            }
            right -= 1
        }
    }
    return water
}
