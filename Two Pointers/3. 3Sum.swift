//
//  3. 3Sum.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 14/12/24.
//

import Foundation

func threeSum(_ nums: [Int]) -> [[Int]] {
    var result: [[Int]] = []
    let sorted = nums.sorted()
    var j = 0
    var k = sorted.count - 1
    
    for i in 0..<sorted.count {
        
        if i > 0 && sorted[i] == sorted[i - 1] {
            continue
        }
        j = i + 1
        k = sorted.count - 1
        
        while j < k {
            let sum = sorted[i] + sorted[j] + sorted[k]
            
            if sum == 0 {
                result.append([sorted[i], sorted[j], sorted[k]])
                j += 1
                while j < k && sorted[j] == sorted[j - 1] {
                    j += 1
                }
            } else  if sum < 0 {
                j += 1
            } else {
                k -= 1
            }
        }
        
    }
    return result
}
