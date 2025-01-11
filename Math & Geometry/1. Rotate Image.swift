//
//  1. Rotate Image.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 10/01/25.
//

import Foundation
func rotate(_ matrix: inout [[Int]]) {
        let n = matrix.count
        
        // Step 1: Transpose the matrix
        for i in 0..<n {
            for j in i..<n {
                // Swap elements across diagonal
                let temp = matrix[i][j]
                matrix[i][j] = matrix[j][i]
                matrix[j][i] = temp
            }
        }
        
        // Step 2: Reverse each row
        for i in 0..<n {
            // Use two pointers to reverse each row
            var left = 0
            var right = n - 1
            while left < right {
                let temp = matrix[i][left]
                matrix[i][left] = matrix[i][right]
                matrix[i][right] = temp
                left += 1
                right -= 1
            }
        }
    }
