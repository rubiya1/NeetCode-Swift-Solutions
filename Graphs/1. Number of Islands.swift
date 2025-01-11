//
//  1. Number of Islands.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 30/12/24.
//

import Foundation


func numberOfIslands(_ grid: [[Character]]) -> Int {
    var count = 0
    var grid = grid
    let rows = grid.count
    let cols = grid[0].count
    
    func dfs(_ row: Int, _ col: Int) {
        if row < 0 || row >= rows || col < 0 || col >= cols || grid[row][col] == "0" {
            return
        }
        grid[row][col] = "0"
        // Explore all 4 direction
        dfs(row - 1, col)
        dfs(row + 1, col)
        dfs(row, col - 1)
        dfs(row, col + 1)
    }
    
    for row in 0..<rows {
        for col in 0..<cols {
            if grid[row][col] == "1" {
                count += 1
                dfs(row, col)
            }
        }
    }
    return count
}
