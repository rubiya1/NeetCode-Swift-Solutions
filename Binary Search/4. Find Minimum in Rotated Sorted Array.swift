//
//  4. Find Minimum in Rotated Sorted Array.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 23/12/24.
//

import Foundation


func findMin(_ nums: [Int]) -> Int {
    guard !nums.isEmpty else { return nums.first! }
    var left = 0, right = nums.count - 1
    
    while left < right {
        let mid = left + (right - left) / 2
        if nums[mid] > nums[right] {
            left = mid + 1
        }else {
            right = mid
        }
    }
    return nums[left]
}
