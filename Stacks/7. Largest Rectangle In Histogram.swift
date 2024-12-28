//
//  7. Largest Rectangle In Histogram.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 22/12/24.
//

import Foundation

func largestRectangleInHistogram(_ heights: [Int]) -> Int {
    var stack: [Int] = []
    var maxArea: Int = 0
    
    let extendedHeights: [Int] = heights + [0]
    for i in heights.indices {
        while !stack.isEmpty, extendedHeights[i] < extendedHeights[stack.last!]  {
            let height = extendedHeights[stack.removeLast()]
            let width = stack.isEmpty ? i : i - stack.last! - 1
            let area = height * width
            maxArea = max(maxArea, area)
        }
        
        stack.append(i)
        
    }
    return maxArea
}
