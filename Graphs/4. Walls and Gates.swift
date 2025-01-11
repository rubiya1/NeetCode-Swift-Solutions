//
//  4. Walls and Gates.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 30/12/24.
//

import Foundation


func wallsAndGates(_ rooms: inout [[Int]]) {
    let rows = rooms.count
    let cols = rooms[0].count
    let directions: [(Int, Int)] = [(1, 0), (-1, 0), (0, 1), (0, -1)]
    var queue: [(Int, Int)] = []
    
    // Add all gates to the queue
    for row in 0..<rows {
        for col in 0..<cols {
            if rooms[row][col] == 0 {
                queue.append((row, col))
            }
        }
    }
    
    // Perform BFS
    while !queue.isEmpty {
        let (row, col) = queue.removeFirst()
        
        for (dr, dc) in directions {
            let newRow = row + dr
            let newCol = col + dc
            
            // Check bounds and skip walls or already updated rooms
            if newRow < 0 || newRow >= rows || newCol < 0 || newCol >= cols || rooms[newRow][newCol] != 2147483647 {
                continue
            }
            
            // Update the room's distance and enqueue it
            rooms[newRow][newCol] = rooms[row][col] + 1
            queue.append((newRow, newCol))
        }
    }
}
