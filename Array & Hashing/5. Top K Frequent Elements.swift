//
//  5. Top K Frequent Elements.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 12/12/24.
//

import Foundation

func topKFrequentElements(_ nums: [Int], _ k: Int) -> [Int] {
    guard !nums.isEmpty else { return [] }
    var frequencyMap = [Int: Int]()
    
    for num in nums {
        frequencyMap[num, default: 0] += 1
    }
     
    let sorted = frequencyMap.sorted { $0.value > $1.value }.prefix(k)
    return sorted.map(\.key)
    
}
