//
//  1. Kth Largest Element in a Stream.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 09/01/25.
//

import Foundation

class KthLargestElementInStream {
    private var heap: [Int] = []
    private var k: Int
    
    init(k: Int, stream: [Int]) {
        self.heap = stream.sorted().suffix(k)
        self.k = k
    }
    
    func add(_ val: Int) -> Int {
        if heap.count < k  || val > heap[0] {
            if heap.count == k { heap.removeFirst() }
            let index = heap.firstIndex { $0 > val } ?? heap.count
            heap.insert(val, at: index)
        }
        return heap[0]
    }
}
