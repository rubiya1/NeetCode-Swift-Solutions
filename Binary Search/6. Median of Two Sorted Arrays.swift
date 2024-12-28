//
//  6. Median of Two Sorted Arrays.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 23/12/24.
//

import Foundation

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    let (num1, num2) = nums1.count > nums2.count ? (nums2, nums1) : (nums1, nums2)
        let n = num1.count, m = num2.count
    
        var left = 0, right = n
      
       while left <= right {
           let i = (left + right) / 2
           let j = (n + m + 1) / 2 - i
           
           let num1LeftMax = i == 0 ? Int.min : num1[i - 1]
           let num1RightMin = i == n ? Int.max : num1[i]
           
           let num2LeftMax = j == 0 ? Int.min : num2[j - 1]
           let num2RightMin = j == m ? Int.max : num2[j]
           
           if num1LeftMax <= num2RightMin && num2LeftMax <= num1RightMin {
               if (n + m) % 2 == 0 {
                   return (Double(max(num1LeftMax, num2LeftMax)) + Double(min(num1RightMin, num2RightMin))) / 2.0
               } else {
                   return Double(max(num1LeftMax, num2LeftMax))
               }
           } else if num1LeftMax > num2RightMin {
               right = i - 1
           } else {
               left = i + 1
           }
       }
       return 0.0
}
