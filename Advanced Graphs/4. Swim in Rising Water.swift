//
//  4. Swim in Rising Water.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 08/01/25.
//

import Foundation

func swimInRisingWater(_ grid: [[Int]]) -> Int {
    let n = grid.count, dirs = [(0, 1), (1, 0), (0, -1), (-1, 0)]
    var waitTime = 0
    var seen = Set<[Int]>()
    var pq = [(grid[0][0], 0, 0)]
    seen.insert([0,0])
    
    while !pq.isEmpty {
        let (elevation, x, y) = pq.removeFirst()
        waitTime = max(waitTime, elevation)
        if x == n-1 && y == n-1 { return waitTime }
        
        
        for (dx, dy) in dirs {
              let nx = x + dx
              let ny = y + dy
              
              if nx >= 0 && nx < n && ny >= 0 && ny < n && !seen.contains([nx,ny]) {
                  seen.insert([nx,ny])
                  pq.append((grid[nx][ny], nx, ny))
              }
          }
        pq.sort { $0.0 < $1.0 }
    }
    
    
    return waitTime
}
