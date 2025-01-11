//
//  2. Last Stone Weight.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 09/01/25.
//

import Foundation

func lastStoneWeight(_ stones: [Int]) -> Int {
    var heap = stones.sorted()
    
    while heap.count > 1 {
        let stone1 = heap.removeLast()
        let stone2 = heap.removeLast()
        let remaining = stone1 - stone2
        if remaining > 0 {
            let index = heap.firstIndex(where: {$0 > remaining }) ?? heap.count
            heap.insert(remaining, at: index)
        }
    }
    return heap.first ?? 0
}

