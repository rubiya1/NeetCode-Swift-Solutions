//
//  1. Binary Search.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 22/12/24.
//

import Foundation

func binarySeach(_ nums: [Int], _ target: Int) -> Int {
    var lo = 0, hi = nums.count - 1
    while lo <= hi {
        let mid = lo + (hi - lo) / 2
        if nums[mid] == target {
            return mid
        } else if mid > target {
            hi = mid - 1
        } else {
            lo = mid + 1
        }
    }
    return -1
}
