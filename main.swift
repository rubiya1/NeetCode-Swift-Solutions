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

// Possible subset
print(subsets([1,2,3,5]))

// Combination Sum
print(combinationSum([2,3,5], 8))

//Permutations
print(permutations([1,2,3]))

// Word Search
print(exist([["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], "ABCB"))

// Number of Islands
print(numberOfIslands([
    ["1","1","0","0","0"],
    ["1","1","0","0","0"],
    ["0","0","1","0","0"],
    ["0","0","0","1","1"]
  ]))

// Max Area of Island
print(maxAreaOfIsland([[0,0,1,0,0,0,0,1,0,0,0,0,0],[0,0,0,0,0,0,0,1,1,1,0,0,0],[0,1,1,0,1,0,0,0,0,0,0,0,0],[0,1,0,0,1,1,0,0,1,0,1,0,0],[0,1,0,0,1,1,0,0,1,1,1,0,0],[0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,0,0,1,1,1,0,0,0],[0,0,0,0,0,0,0,1,1,0,0,0,0]]))

// Rotting Oranges
print("Rotting Oranges result is: \(orangesRotting([[2,1,1],[1,1,0],[0,1,1]]))")

// Climbing Stairs
print(climbingStairs(5))

// Min Cost Climbing Stairs
print(minCostClimbingStairs([10,15,20]))

// Palindromic Substrings
print(palindromeSubstrings("aaa"))

// Decode Ways
print(decodeWays("226"))

// Coin Change II
//print(coinChangeII([2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,68,70,72,74,76,78,80,82,84,86,88,90,92,94,96,98,100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166,168,170,172,174,176,178,180,182,184,186,188,190,192,194,196,198,200,202,204,206,208,210,212,214,216,218,220,222,224,226,228,230,232,234,236,238,240,242,244,246,248,250,252,254,256,258,260,262,264,266,268,270,272,274,276,278,280,282,284,286,288,290,292,294,296,298,300,302,304,306,308,310,312,314,316,318,320,322,324,326,328,330,332,334,336,338,340,342,344,346,348,350,352,354,356,358,360,362,364,366,368,370,372,374,376,378,380,382,384,386,388,390,392,394,396,398,400,402,404,406,408,410,412,414,416,418,420,422,424,426,428,430,432,434,436,438,440,442,444,446,448,450,452,454,456,458,460,462,464,466,468,470,472,474,476,478,480,482,484,486,488,490,492,494,496,498,500,502,504,506,508,510,512,514,516,518,520,522,524,526,528,530,532,534,536,538,540,542,544,546,548,550,552,554,556,558,560,562,564,566,568,570,572,574,576,578,580,582,584,586,588,780,936,1170,1560,2340,4680], 4681))

// Last Stone Weight
print(lastStoneWeight([2,7,4,1,8,1]))

// Hand of Straights
print("Hand of Straights result is \(isNStraightHand([1,2,3,6,2,3,4,7,8], 3))")

//  Merge Triplets to Form Target Triplet
print("Merge Triplets to Form Target Triplet result is \(mergeTripletsToFormTargetTriplet([[2,5,3],[1,8,4],[1,7,5]], [2,7,5]))")

//Greedy 1: maximumSubarray
print("maximum Subarray Result is :\(maximumSubarray([-2,1,-3,4,-1,2,1,-5,4]))")

// Greedy 2: Jump Game
print("Jump Game result is :\(jumpGame([2,3,1,1,4]))")

// Greedy 3: Jump Game II
print("Jump Game II result is :\(jumpGameII([2,3,1,1,4]))")

// Greedy 4: Gas Station
print("Gas Station result is :\(gasStation([1,2,3,4,5], [3,4,5,1,2]))")

// Greedy 5: Hand of Straights
print("Hand of Straights result is :\(isNStraightHand([1,2,3,6,2,3,4,7,8], 3))")

// Greedy 6: Partition Labels
print("Partition Labels result is :\(partitionLabels("ababcbacadefegdehijhklij"))")

// Greedy 7: Valid Parenthesis String
print("8. Valid Parenthesis String result is :\(validParenthesisString("(*)"))")

// Greedy 8: 6. Merge Triplets to Form Target Triplet
print("8. Merge Triplets to Form Target Triplet result is :\(mergeTripletsToFormTargetTriplet([[2,5,3],[1,8,4],[1,7,5]], [2,7,5]))")
