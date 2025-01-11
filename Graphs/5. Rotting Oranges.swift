//
//  5. Rotting Oranges.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 30/12/24.
//

import Foundation


func orangesRotting(_ grid: [[Int]]) -> Int {
    var minutes = 0
    var freshOrangeCount = 0
    var queue: [(Int, Int)] = []
    var grid = grid
    let directions: [(Int, Int)] = [(0, 1), (0, -1), (1, 0), (-1, 0)]
    let rows = grid.count
    let cols = grid[0].count
    
    for i in 0..<rows {
        for j in 0..<cols {
            if grid[i][j] == 2 {
                queue.append((i, j))
            } else if grid[i][j] == 1 {
                freshOrangeCount += 1
            }
         }
    }
    
    while !queue.isEmpty  && freshOrangeCount > 0 {
        let size = queue.count
        for _ in 0..<size {
            let (row, col) = queue.removeFirst()
            
            for direction in directions {
                let newRow = row + direction.0
                let newCol = col + direction.1
                
                if newRow >= 0, newRow < rows, newCol >= 0, newCol < cols, grid[newRow][newCol] == 1 {
                    grid[newRow][newCol] = 2 // Rot the fresh orange
                    queue.append((newRow, newCol))
                    freshOrangeCount -= 1
                }
            }

        }
        minutes += 1        
    }
    
    return freshOrangeCount == 0 ? minutes : -1
}
