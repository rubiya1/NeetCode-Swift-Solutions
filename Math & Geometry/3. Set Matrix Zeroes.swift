//
//  3. Set Matrix Zeroes.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 11/01/25.
//

import Foundation
func setZeroes(_ matrix: inout [[Int]]) {
    let m = matrix.count
    let n = matrix[0].count
    var firstRowHasZero = false
    var firstColHasZero = false
    
    // Check if first row has zero
    for j in 0..<n {
        if matrix[0][j] == 0 {
            firstRowHasZero = true
            break
        }
    }
    
    // Check if first column has zero
    for i in 0..<m {
        if matrix[i][0] == 0 {
            firstColHasZero = true
            break
        }
    }
    
    // Use first row and column as markers
    for i in 1..<m {
        for j in 1..<n {
            if matrix[i][j] == 0 {
                matrix[i][0] = 0
                matrix[0][j] = 0
            }
        }
    }
    
    // Set zeros based on markers
    for i in 1..<m {
        for j in 1..<n {
            if matrix[i][0] == 0 || matrix[0][j] == 0 {
                matrix[i][j] = 0
            }
        }
    }
    
    // Set first row to zero if needed
    if firstRowHasZero {
        for j in 0..<n {
            matrix[0][j] = 0
        }
    }
    
    // Set first column to zero if needed
    if firstColHasZero {
        for i in 0..<m {
            matrix[i][0] = 0
        }
    }
}

