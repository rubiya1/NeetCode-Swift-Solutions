//
//  8. Valid Sudoku.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 13/12/24.
//

import Foundation
func validSudoku(_ board: [[Character]]) -> Bool {
    let count = 9
    var rows = Array(repeating: Set<Character>(), count: count)
    var cols = Array(repeating: Set<Character>(), count: count)
    var boxes = Array(repeating: Set<Character>(), count: count)
    
    func addToSet(_ char: Character, _ row: Int, _ col: Int) -> Bool {
        let boxIndex = (row / 3) * 3 + (col / 3)

        if rows[row].contains(char) || cols[col].contains(char) || boxes[boxIndex].contains(char) {
            return false
        }
        rows[row].insert(char)
        cols[col].insert(char)
        boxes[boxIndex].insert(char)
        return true
    }
    
    for row in 0..<9 {
        for col in 0..<9 {
            let num = board[row][col]
            
            if num == "." {
                continue
            }
            guard addToSet(board[row][col], row, col) else { return false }
            
        }
    }
    
    return true
}
