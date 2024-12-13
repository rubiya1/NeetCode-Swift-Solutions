//
//  Contains Duplicate.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 12/12/24.
//

import Foundation

func containsDuplicate(_ nums: [Int]) -> Bool {
    return nums.count > Set(nums).count
}

