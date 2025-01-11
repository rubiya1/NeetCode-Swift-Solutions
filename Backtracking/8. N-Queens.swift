//
//  8. N-Queens.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 30/12/24.
//

import Foundation

func nQueens(_ n: Int) -> [[String]] {
    var solutions: [[String]] = []
    guard n >= 1 else { return solutions }
    
    var board = Array(repeating: Array(repeating: ".", count: n), count: n)
    var columns: Set<Int> = []
    var diagonals: Set<Int> = []
    var antiDiagonals: Set<Int> = []
    
    func backTrack(_ row: Int) {
        if row == n {
            solutions.append(board.map { $0.joined() })
            return
        }
        
        for column in 0..<n {
            if columns.contains(column) || diagonals.contains(row + column) || antiDiagonals.contains(row - column) { continue }
            
            columns.insert(column)
            diagonals.insert(row + column)
            antiDiagonals.insert(row - column)
            board[row][column] = "Q"
            backTrack(row + 1)
            
            board[row][column] = "."
            columns.remove(column)
            diagonals.remove(row + column)
            antiDiagonals.remove(row - column)
        }
        
    }
    
    backTrack(0)
    return solutions
   
}
