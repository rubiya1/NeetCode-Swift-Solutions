//
//  2. Combination Sum.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 29/12/24.
//

import Foundation


func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
    var result: [[Int]] = []
    
    func backTrack(_ combination: [Int], _ remaining: Int, _ index: Int) {
        if remaining == 0 {
            result.append(combination)
            return
        }
        if remaining < 0 { return }
        
        for i in index..<candidates.count {
            backTrack(combination + [candidates[i]], remaining - candidates[i], i)
        }
    }
    backTrack([], target, 0)
    return result
}
//[2,3,5]
