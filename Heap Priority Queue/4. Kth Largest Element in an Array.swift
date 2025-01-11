//
//  4. Kth Largest Element in an Array.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 09/01/25.
//

import Foundation


func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
    var stack = [Int]()
    
    for num in nums {
        if stack.isEmpty {
            stack.append(num)
        }
        var left = 0, right = stack.count - 1
        while left <= right {
            let mid = left + (right - left) / 2
            let midVal = stack[mid]
            if midVal == num {
                left = mid
                break
            } else if num > midVal {
                right = mid - 1

            } else {
                left = mid + 1

            }
        }
        stack.insert(num, at: left)
        if stack.count > k {
                    stack.removeLast()
                }
    }
    return stack.last!
}
