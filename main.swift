//
//  main.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 12/12/24.
//


// Array and hashing
import Foundation

// Contains Duplicate
print(containsDuplicate([1,1,1,3,3,4,3,2,4,2]))

// Valid Anagram
print(isAnagram("abc", "abc"))

// Two sum
print(twoSum([1,2,3,4], 7))

// Group Anagrams
print(groupAnagrams( ["act","pots","tops","cat","stop","hat"]))

// Top K Frequent Elements
print(topKFrequentElements([3,0,1,0], 1))

// Product of Array Except Self
print(productExceptSelf([1,2,3,4]))

// Valid Sudoku
print(validSudoku([["8","3",".",".","7",".",".",".","."]
                   ,["6",".",".","1","9","5",".",".","."]
                   ,[".","9","8",".",".",".",".","6","."]
                   ,["8",".",".",".","6",".",".",".","3"]
                   ,["4",".",".","8",".","3",".",".","1"]
                   ,["7",".",".",".","2",".",".",".","6"]
                   ,[".","6",".",".",".",".","2","8","."]
                   ,[".",".",".","4","1","9",".",".","5"]
                   ,[".",".",".",".","8",".",".","7","9"]]))

// Longest Consecutive Sequence
print(longestConsecutiveSequence([0,3,7,2,5,8,4,6,0,1]))

// Valid Palindrome
print(isPalindrome("A man, a plan, a canal: Panama"))

// Two Integer Sum II
print(twoSumSortedArray([5,25,75], 100))

// 3Sum
print(threeSum([-1,0,1,2,-1,-4]))

// Container With Most Water
print(maxArea([1,7,2,5,4,7,3,6]))

// Trapping Rain Water
print(trappingRainWater([0,1,0,2,1,0,1,3,2,1,2,1]))

// Valid Parentheses
print(isvalidParentheses("[(])"))

// Evaluate Reverse Polish Notation
print(evalRPN(["10","6","9","3","+","-11","*","/","*","17","+","5","+"]))

// Generate Parentheses
print(generateParentheses(3))

// Daily Temperatures
print(dailyTemperatures([30,40,50,60]))

// Car Fleet
print(carFleet(100, [0,2,4], [4,2,1]))

// Largest Rectangle in Histogram
print(largestRectangleInHistogram([1]))

// Binary search
print(binarySeach([-1,0,3,5,9,12], 2))

// Search a 2D Matrix
print("Search a 2D Matrix Result:\(seachMatrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 3))")

// Koko Eating Bananas
print("Koko Eating Bananas Result:\(minEatingSpeed([3,6,7,11], 8))")

// Find Minimum in Rotated Sorted Array
print("Minimum in Rotated Sorted Array Result: \(findMin([4,5,6,7,0,1,2]))")

// Time Based Key-Value Store
print("Time Based Key-Value Store result:")

// Median of Two Sorted Arrays
print("Median of Two Sorted Arrays Result: \(findMedianSortedArrays([1,2], [3,4]))")

// Best Time to Buy and Sell Stock
print(maxProfit([7,1,5,3,6,4]))

// Longest Repeating Character Replacement
print("Longest Repeating Character Replacement result:\(longestRepeatingCharacterReplacement("AABABBA", 1))")

//  Permutation in String
print("Permutation in String result: \(checkInclusion("ab", "eidbaooo"))")

// Minimum Window Substring
print("Minimum Window Substring \(minimumWindowSubstring("ADOBECODEBANC", "ABC"))")

// Merge two array
print(mergeTwoSortedArary([1,3,4,5,6], [0,2,7,8,9]))

// remove nth node
print(removeNthNodeFromEndOfArrayList(in: [1], 1))

// Find the Duplicate Number
print(findDuplicate([3,1,3,4,2]))
