//
//  5. Word Search.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 30/12/24.
//

import Foundation
func exist(_ board: [[Character]], _ word: String) -> Bool {
    let rows = board.count
    let cols = board[0].count
    let wordArray = Array(word)
    var board = board // Mutable baord

    // Define the DFS function
    func dfs(_ i: Int, _ j: Int, _ index: Int) -> Bool {
        // Base cases
        if index == wordArray.count { // All characters matched
            return true
        }
        if i < 0 || j < 0 || i >= rows || j >= cols || board[i][j] != wordArray[index] {
            return false
        }

        // Temporarily mark the cell as visited
        board[i][j] = "#"

        // Explore all 4 directions
        let result = dfs(i + 1, j, index + 1) || // Down
                     dfs(i - 1, j, index + 1) || // Up
                     dfs(i, j + 1, index + 1) || // Right
                     dfs(i, j - 1, index + 1)    // Left
        
        board[i][j] = wordArray[index]

        return result
    }

    // Loop through the board
    for i in 0..<rows {
        for j in 0..<cols {
            if dfs(i, j, 0) { // Start DFS if the first letter matches
                return true
            }
        }
    }

    return false
}
