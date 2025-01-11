//
//  1. Single Number.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 09/01/25.
//

import Foundation


func singleNumber(_ nums: [Int]) -> Int {
   var result  = 0
    
    for num in nums {
        result ^= num
    }
    return result
}
