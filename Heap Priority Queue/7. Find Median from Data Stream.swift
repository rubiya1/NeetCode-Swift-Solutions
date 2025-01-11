//
//  7. Find Median from Data Stream.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 11/01/25.
//

import Foundation
class MedianFinder {
    private var leftHeap = [Int]() // Max-Heap (negate values)
    private var rightHeap = [Int]()
     init() {}
    
    func addNum(_ num: Int) {
        if leftHeap.isEmpty || num <= -leftHeap[0] {
            leftHeap.append(-num)
            leftHeap.sort()
        } else {
            rightHeap.append(num)
            rightHeap.sort()
        }
        
        // Balance heaps
        if leftHeap.count > rightHeap.count + 1 {
            rightHeap.append(-leftHeap.removeFirst())
            rightHeap.sort()
        } else if rightHeap.count > leftHeap.count {
            leftHeap.append(-rightHeap.removeFirst())
            leftHeap.sort()
        }
    }
    
    func findMedian() -> Double {
        if leftHeap.count > rightHeap.count {
            return Double(-leftHeap[0])
        } else {
            return (Double(-leftHeap[0]) + Double(rightHeap[0])) / 2.0
        }
    }
}
