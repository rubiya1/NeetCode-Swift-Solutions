//
//  4. Subsets II.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 29/12/24.
//

import Foundation

func subsetwithDuplicates(_ nums: [Int]) -> [[Int]] {
    var result: [[Int]] = []
  
    func backtrack(_ current: [Int], _ index: Int) {
        result.append(current)
        
        for i in index..<nums.count {
            if i > index && nums[i] == nums[i-1] { continue }
            backtrack(current + [nums[i]], i+1)
        }
    }
    
    return result
}
