//
//  2. Two Integer Sum II.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 14/12/24.
//

import Foundation
//https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/

func twoSumSortedArray(_ numbers: [Int], _ target: Int) -> [Int] {
    var left = 0
    var right = numbers.count - 1

    while left < right {
        let sum = numbers[left] + numbers[right]

        // Adjust the pointers based on the "distance" from the target
        if sum == target {
            return [left + 1, right + 1]
        } else if target - sum >= numbers[left + 1] - numbers[left] {
            left += 1
        } else {
            right -= 1
        }
    }

    return []
}
