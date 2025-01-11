//
//  6. Pacific Atlantic Water Flow.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 30/12/24.
//

import Foundation

func pacificAtlantic(_ heights: [[Int]]) -> [[Int]] {
    let row = heights.count, col = heights[0].count
    var res = [[Int]]()
    
    var pacific = Array(repeating: Array(repeating: false, count: col), count: row)
    var atlanctic = Array(repeating: Array(repeating: false, count: col), count: row)
    
    for i in 0..<row {
        dfs(i, 0, &pacific, -1)
        dfs(i, col - 1, &pacific, -1)
    }
    
    
    for j in 0..<col {
        dfs(0, j, &atlanctic, -1)
        dfs(row - 1, j, &atlanctic, -1)
    }
    
    for i in 0..<row {
        for j in 0..<col {
            if pacific[i][j] && atlanctic[i][j] { res.append([i, j]) }
        }
    }
    
    func dfs(_ i: Int, _ j: Int, _ visited: inout [[Bool]], _ prevHeight: Int) {
        guard i >= 0 && i < row && j >= 0 && j < col  && !visited[i][j] && heights[i][j] > prevHeight else{ return }
        visited[i][j] = true
        
        dfs(i + 1, j, &visited, heights[i][j])
        dfs(i - 1, j, &visited, heights[i][j])
        dfs(i, j + 1, &visited, heights[i][j])
        dfs(i, j - 1, &visited, heights[i][j])
    }
    
    return res
}


