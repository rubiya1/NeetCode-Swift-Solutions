//
//  2. Search a 2D Matrix.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 22/12/24.
//

import Foundation

func seachMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    guard matrix.count > 0 else { return false }
    let row = matrix.count
    let col = matrix[0].count
    var low = 0, high = row * col - 1
    
    while low <= high {
        let mid = low + (high - low) / 2
        let midRow = mid / col
        let midCol = mid % col
        
        if matrix[midRow][midCol] == target {
            return true
        } else if matrix[midRow][midCol] < target {
            low = mid + 1
        } else {
            high = mid - 1
        }
      
    }
    return false
}
