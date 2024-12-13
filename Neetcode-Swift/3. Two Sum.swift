//
//  Two Sum.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 12/12/24.
//

import Foundation

//https://leetcode.com/problems/two-sum/description/

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var map: [Int: Int] = [:]
    for (i, num) in nums.enumerated() {
      if let x = map[target - num] {
            return [x, i]
        }
        map[num] = i
    }
    return []
}
