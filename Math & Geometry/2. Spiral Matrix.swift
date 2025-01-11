//
//  2. Spiral Matrix.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 11/01/25.
//

import Foundation

func spiralMatrix(_ matrix: [[Int]]) -> [Int] {
    guard !matrix.isEmpty else { return [] }
    
    var result = [Int]()
    var top = 0, bottom = matrix.count - 1
    var left = 0, right = matrix[0].count - 1
    
    while result.count < matrix.count * matrix[0].count {
        // Right
        for col in left...right where top <= bottom {
            result.append(matrix[top][col])
        }
        top += 1
        
        // Down
        for row in top...bottom where left <= right {
            result.append(matrix[row][right])
        }
        right -= 1
        
        // Left
        for col in (left...right).reversed() where top <= bottom {
            result.append(matrix[bottom][col])
        }
        bottom -= 1
        
        // Up
        for row in (top...bottom).reversed() where left <= right {
            result.append(matrix[row][left])
        }
        left += 1
    }
    
    return result
    
}
