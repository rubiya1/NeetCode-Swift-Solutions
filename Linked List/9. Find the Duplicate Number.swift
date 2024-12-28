//
//  9. Find the Duplicate Number.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 26/12/24.
//

import Foundation

func findDuplicate(_ nums: [Int]) -> Int {
    var low = 1
    var high = nums.count - 1
    
    while low < high {
        let mid = (low + high) / 2
        let count =  nums.filter { $0 <= mid }.count
        if count > mid {
            high = mid
        } else {
            low = mid + 1
        }
    }
    return low
}
