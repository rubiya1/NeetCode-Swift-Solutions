//
//  3. Permutations.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 29/12/24.
//

import Foundation
func permutations(_ nums: [Int]) -> [[Int]] {
    var result: [[Int]] = []
    
    func backTrack(_ current: [Int], _ remaining: [Int]) {
        
        if remaining.isEmpty {
            result.append(current)
            return
        }
        
        for i in 0..<remaining.count {
            var newRemaining = remaining
            newRemaining.remove(at: i)
            backTrack(current + [remaining[i]], newRemaining)
        }
    }
    backTrack([], nums)
    return result
}
