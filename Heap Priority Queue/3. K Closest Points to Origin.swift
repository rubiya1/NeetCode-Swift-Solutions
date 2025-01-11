//
//  3. K Closest Points to Origin.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 09/01/25.
//

import Foundation

func kClosestPointsToOrigin(_ points: [[Int]], _ k: Int) -> [[Int]] {
    var maxHeap = [(distance: Int, point:[Int])]()
    
    for point in points {
        let x = point[0]
        let y = point[1]
        let distance = -(x * x + y * y)
        maxHeap.append((distance: distance, point: point))
        maxHeap.sort {$0.distance < $1.distance }
        
        if maxHeap.count > k {
            maxHeap.removeFirst()
        }
    }
    return maxHeap.map {$0.point }
}
