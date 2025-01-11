//
//  2. Max Area of Island.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 30/12/24.
//

import Foundation

func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
    var maxArea = 0
    var grid = grid
    let rows = grid.count
    let cols = grid[0].count
    
    func dfs(row: Int, col: Int) -> Int {
        if row < 0 || row >= rows || col < 0 || col >= cols || grid[row][col] == 0  { return 0 }
        
        grid[row][col] = 0
        var area = 1
        
        // Explore all 4 direction
        area += dfs(row: row - 1, col: col)
        area += dfs(row: row + 1, col: col)
        area += dfs(row: row, col: col - 1)
        area += dfs(row: row, col: col + 1)
        return area
    }
    
    for row in 0..<rows {
        for col in 0..<cols {
            let area = dfs(row: row, col: col)
            maxArea = max(maxArea, area)
        }
    }
    return maxArea
}
